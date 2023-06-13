import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:dartz/dartz.dart';
import 'package:get_storage/get_storage.dart';
import 'package:rapi2/infraestructure/device/services/storage/user_storage_service.dart';
import 'package:rapi2/domain/entities/user.dart';
import 'package:rapi2/infraestructure/data_transfer_objects/user_dto.dart';

void main() async {

  TestWidgetsFlutterBinding.ensureInitialized();

  late GetStorage g;
  late UserStorageService userStorageService;


  const channel = MethodChannel('plugins.flutter.io/path_provider');
  void setUpMockChannels(MethodChannel channel) {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
        .setMockMethodCallHandler(
      channel,
      (MethodCall? methodCall) async {
        if (methodCall?.method == 'getApplicationDocumentsDirectory') {
          return '.';
        }
        return null;
      },
    );
  }

  setUpAll(() async {
    setUpMockChannels(channel);
  });

  setUp(() async {
    await GetStorage.init();
    g = GetStorage();
    await g.erase();
    userStorageService = UserStorageService(g);
  });


  group('UserStorageService CRD', () {

    const testUserDto =  UserDTO(
      name: 'Test',
      lastName: 'User',
      phoneNumber: '1234567890',
      callCode: '1',
      countryCode: 'US',
    );

    final User testUser = testUserDto.toDomain();


    test('should save user to storage', () async {
      // act
      await userStorageService.saveUser(testUserDto);

      // assert
      final userJson = g.read('user');
      expect(userJson, equals(testUserDto.toJson()));
    });

    test('should delete user from storage', () async {
      // arrange
      await g.write('user', testUserDto.toJson());

      // act
      await userStorageService.deleteUser();

      // assert
      final userJson = g.read('user');
      expect(userJson, isNull);
    });

    test('should get user from storage', () async {
      // arrange
      await g.write('user', testUserDto.toJson());

      // act
      final result = await userStorageService.getUser();

      // assert
      expect(result, equals(some(testUser)));
    });
  });
}

// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';
import 'package:get_storage/get_storage.dart';
import 'package:injectable/injectable.dart';

import '../../data_transfer_objects/entities/user_dto.dart';

@lazySingleton
class UserStorageService {

  final GetStorage _storage;

  UserStorageService(
    this._storage,
  );


  Future<void> saveUser(UserDTO user) async {
    await _storage.write('user', user.toJson());
  }

  Future<void> deleteUser() async {
    await _storage.remove('user');
  }

  Future<Option<UserDTO>> getUser() async {
    final userJson = _storage.read('user');
    if (userJson != null) {
      final user = UserDTO.fromJson(userJson);
      return some(user);
    }
    return none();
  }
}

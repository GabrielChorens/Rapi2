import 'package:injectable/injectable.dart';
import 'package:rapi2/infraestructure/data_transfer_objects/entities/user_dto.dart';
import 'package:rapi2/infraestructure/network/dio_provider.dart';
import 'package:rapi2/infraestructure/services/user_injection_service.dart';

@lazySingleton
class AuthManagementService{

  final DioProvider _dioProvider;
  final AuthDependencyInjectionService _authDependencyInjectionService;

  AuthManagementService(this._dioProvider, this._authDependencyInjectionService);

  Future<void> establishUser (UserDTO user) async {
    await _authDependencyInjectionService.setUser(user);
    _dioProvider.setHeader(user.authToken);
  }

  Future<void> clearUser () async {
    await _authDependencyInjectionService.clearUser();
    _dioProvider.removeHeader();
  }
}
import 'package:dartz/dartz.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:rapi2/infraestructure/data_transfer_objects/entities/user_dto.dart';

@lazySingleton
class GlobalUserDTOGetterOption{

  Future<Option<UserDTO>> get currentUser async {
    if (GetIt.I.isRegistered<UserDTO>()) {
      final user = GetIt.I.get<UserDTO>();
      return some(user);
    }
    return none();
  }
}

@lazySingleton
class AuthDependencyInjectionService {
  Future<void> clearUser() async {
    if (GetIt.I.isRegistered<UserDTO>()) {
      GetIt.I.unregister<UserDTO>();
    }
  }

  Future<void> setUser(UserDTO user) async {
    if (GetIt.I.isRegistered<UserDTO>()) {
      GetIt.I.unregister<UserDTO>();
    }
    GetIt.I.registerSingleton<UserDTO>(user);
  }
}

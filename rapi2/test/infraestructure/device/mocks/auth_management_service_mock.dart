import 'package:rapi2/infraestructure/data_transfer_objects/entities/user_dto.dart';
import 'package:rapi2/infraestructure/services/auth_management_service.dart';

class MockAuthManagementService implements AuthManagementService {
  @override
  Future<void> clearUser() {
    throw UnimplementedError();
  }

  @override
  Future<void> establishUser(UserDTO user) {
    throw UnimplementedError();
  }
}
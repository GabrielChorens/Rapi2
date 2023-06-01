import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rapi2/domain/value_objects/user_value_objects/number_as_string.dart';
import 'package:rapi2/domain/value_objects/user_value_objects/user_value_objects_barrel.dart';

import '../../domain/entities/user.dart';

part 'user_dto.freezed.dart';

@freezed
abstract class UserDTO implements _$UserDTO {
  const UserDTO._();

  const factory UserDTO({
    required final String name,
    required final String lastName,
    required final String phoneNumber,
    required final String callCode,
    required final String countryCode,
    required final String email,
    final String? password,
    required final String authToken,
    required final String currency,
    final String? profilePictureURL,
  }) = _UserDTO;

  factory UserDTO.fromDomain(User user) {
    return UserDTO(
      name: user.name,
      lastName: user.lastName,
      phoneNumber: user.phoneNumber.phoneNumber.getOrCrash(),
      callCode: user.phoneNumber.callCode.getOrCrash(),
      countryCode: user.phoneNumber.countryCode,
      email: user.email.getOrCrash(),
      password: user.password.getOrCrash(),
      currency: user.currency.getOrCrash(),
      authToken: user.authToken,
      profilePictureURL: user.profilePictureURL,
    );
  }

  User toDomainFromLogin(Password password) {
    return User(
      name: name,
      lastName: lastName,
      phoneNumber: PhoneNumber(
          callCode: NumberAsString(callCode),
          phoneNumber: NumberAsString(phoneNumber),
          countryCode: countryCode),
      email: Email(email),
      password: password,
      currency: Currencies(currency),
      authToken: authToken,
      profilePictureURL: profilePictureURL,
    );
  }

  Map<String, dynamic> toJsonLogin() => <String, dynamic>{
        'phoneNumber': phoneNumber,
        'callCode': callCode,
        'countryCode': countryCode,
        'password': password,
        'firebaseToken': FirebaseToken.defaultFirebaseToken,
      };

  factory UserDTO.fromJsonLogin(Map<String, dynamic> json) {
    return UserDTO(
      name: json['name'] as String,
      lastName: json['lastName'] as String,
      phoneNumber: json['phoneNumber'] as String,
      callCode: json['callCode'] as String,
      countryCode: json['countryCode'] as String,
      email: json['email'] as String,
      currency: json['currency'] as String,
      authToken: json['authToken'] as String,
      profilePictureURL: json['profilePictureURL'] as String?,
    );
  }

  Map<String, dynamic> toJsonSignUp() => <String, dynamic>{
        'name': name,
        'lastName': lastName,
        'phoneNumber': phoneNumber,
        'callCode': callCode,
        'countryCode': countryCode,
        'email': email,
        'password': password,
        'firebaseToken': FirebaseToken.defaultFirebaseToken,
      };

  Map<String, dynamic> updateCurrencyToJson() => <String, dynamic>{
        'currency': currency,
      };
      
  Map<String, dynamic> updateNameToJson() => <String, dynamic>{
        'name': name,
        'lastName': lastName,
      };

  Map<String, dynamic> updatePhoneNumberToJson() => <String, dynamic>{
        'phoneNumber': phoneNumber,
        'callCode': callCode,
        'countryCode': countryCode,
      };

  Map<String, dynamic> updatePasswordToJson(String newPassword) =>
      <String, dynamic>{
        'currentPassword': password,
        'newPassword': newPassword,
      };

  Map<String, dynamic> updateEmailToJson() => <String, dynamic>{
        'email': email,
      };
}

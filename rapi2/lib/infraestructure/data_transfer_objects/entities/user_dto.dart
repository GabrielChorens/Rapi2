import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/user.dart';
import '../../../domain/value_objects/user_value_objects.dart';


part 'user_dto.freezed.dart';

///A data transfer object that represents an user.
@freezed
abstract class UserDTO with _$UserDTO {
  const UserDTO._();
  ///Default constructor for the [UserDTO] data transfer object.
  ///It contains the following required fields: [String] name, [String] lastName, [String] phoneNumber, [String] callCode and [String] countryCode.
  ///It contains the following optional fields: [String] email, [String] authToken, [String] currency and [String] profilePictureURL.
  const factory UserDTO({
    required final String name,
    required final String lastName,
    required final String phoneNumber,
    required final String callCode,
    required final String countryCode,
    final String? email,
    final String? authToken,
    final String? currency,
    final String? profilePictureURL,
  }) = _UserDTO;

  ///Converts a [User] entity to a [UserDTO] data transfer object.
  factory UserDTO.fromDomain(User user) {
    return UserDTO(
      name: user.fullName.firstName,
      lastName: user.fullName.lastName,
      phoneNumber: user.phoneNumber.phoneNumber.getOrCrash(),
      callCode: user.phoneNumber.callCode.getOrCrash(),
      countryCode: user.phoneNumber.countryCode,
      email: user.email?.getOrCrash(),
      currency: user.currency?.getOrCrash(),
      authToken: user.authToken,
      profilePictureURL: user.profilePictureURL,
    );
  }

  ///Converts a [UserDTO] data transfer object to a [User] entity.
  User toDomain() {
    final email = this.email == null ? null : Email(this.email!);
    final currency = this.currency == null ? null : Currencies(this.currency!);

    return User(
      fullName: Name(firstName: name, lastName: lastName),
      phoneNumber: PhoneNumber(
          callCode: NumberAsString(callCode),
          phoneNumber: NumberAsString(phoneNumber),
          countryCode: countryCode),
      email: email,
      currency: currency,
      authToken: authToken,
      profilePictureURL: profilePictureURL,
    );
  }

  ///Converts a JSON object to a [UserDTO] data transfer object.
  factory UserDTO.fromJson(Map<String, dynamic> json) {
    return UserDTO(
      name: json['name'] as String,
      lastName: json['last_name'] as String,
      phoneNumber: json['phone_number'] as String,
      callCode: json['call_code'] as String,
      countryCode: json['country_code'] as String,
      email: json['email'] as String?,
      authToken: json['auth_token'] as String?,
      currency: json['currency'] as String?,
      profilePictureURL: json['profile_picture'] as String?,
    );
  }

  ///Converts a [UserDTO] data transfer object to a JSON object.
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'last_name': lastName,
      'phone_number': phoneNumber,
      'call_code': callCode,
      'country_code': countryCode,
      'email': email,
      'auth_token': authToken,
      'currency': currency,
      'profile_picture': profilePictureURL,
    };
  }
}

// ignore_for_file: file_names

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rapi2/domain/value_objects/user_value_objects.dart';
import 'package:rapi2/infraestructure/data_transfer_objects/entities/user_dto.dart';

/// This is the file that contains the DTOs for the user value objects. Are simple freezed classes that 
/// itemize the fields of the value objects. Mostly String fields.

part 'user_value_objects_DTOs.freezed.dart';


@freezed
abstract class NameDTO with _$NameDTO {
  const NameDTO._();
  const factory NameDTO({
    required String firstName,
    required String lastName,
  }) = _NameDTO;

  factory NameDTO.fromDomain(Name name) => NameDTO(
        firstName: name.firstName,
        lastName: name.lastName,
      );

  Name toDomain() => Name(
        firstName: firstName,
        lastName: lastName,
      );
}

@freezed
abstract class PhoneNumberDTO with _$PhoneNumberDTO {
  const PhoneNumberDTO._();

  const factory PhoneNumberDTO({
    required String fullPhoneNumber,
    required String phoneNumber,
    required String callCode,
    required String countryCode,
  }) = _PhoneNumberDTO;

  factory PhoneNumberDTO.fromDomain(PhoneNumber phoneNumber) => PhoneNumberDTO(
        fullPhoneNumber: phoneNumber.getOrCrash(),
        phoneNumber: phoneNumber.phoneNumber.getOrCrash(),
        callCode: phoneNumber.callCode.getOrCrash(),
        countryCode: phoneNumber.countryCode,
      );

  factory PhoneNumberDTO.fromUserDTO(UserDTO userDTO) => PhoneNumberDTO(
        fullPhoneNumber: '+${userDTO.callCode}${userDTO.phoneNumber}',
        phoneNumber: userDTO.phoneNumber,
        callCode: userDTO.callCode,
        countryCode: userDTO.countryCode,
      );

  PhoneNumber toDomain() => PhoneNumber(
        callCode: NumberAsString(callCode),
        phoneNumber: NumberAsString(phoneNumber),
        countryCode: countryCode,
      );
}

@freezed
abstract class PasswordDTO with _$PasswordDTO {
  const PasswordDTO._();

  const factory PasswordDTO({
    required String password,
  }) = _PasswordDTO;

  factory PasswordDTO.fromDomain(Password password) => PasswordDTO(
        password: password.getOrCrash(),
      );

  Password toDomain() => Password(password);
}

@freezed
abstract class EmailDTO with _$EmailDTO {
  const EmailDTO._();

  const factory EmailDTO({
    required String email,
  }) = _EmailDTO;

  factory EmailDTO.fromDomain(Email email) => EmailDTO(
        email: email.getOrCrash(),
      );

  Email toDomain() => Email(email);
}

@freezed
abstract class CurrenciesDTO with _$CurrenciesDTO {
  const CurrenciesDTO._();
  const factory CurrenciesDTO({
    required String currency,
  }) = _CurrenciesDTO;

  factory CurrenciesDTO.fromDomain(Currencies currencies) => CurrenciesDTO(
        currency: currencies.value.getOrElse(() => ''),
      );

  Currencies toDomain() => Currencies(currency);
}

@freezed
abstract class FirebaseTokenDTO with _$FirebaseTokenDTO {
  const FirebaseTokenDTO._();
  const factory FirebaseTokenDTO({
    required String firebaseToken,
  }) = _FirebaseTokenDTO;

  factory FirebaseTokenDTO.fromDomain(FirebaseToken firebaseToken) =>
      FirebaseTokenDTO(firebaseToken: firebaseToken.firebaseToken);

  FirebaseToken toDomain() => FirebaseToken(firebaseToken: firebaseToken);    
}

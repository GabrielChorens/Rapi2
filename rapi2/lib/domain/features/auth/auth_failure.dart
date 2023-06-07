import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_failure.freezed.dart';
///A freezed union that represents the possible failures that can occur during the authentication process.
@freezed
abstract class AuthFailure with _$AuthFailure {
  const factory AuthFailure.serverError() = ServerError;
  const factory AuthFailure.phoneNumberAlreadyInUse() = PhoneNumberAlreadyInUse;
  const factory AuthFailure.emailAlreadyInUse() = EmailAlreadyInUse;
  const factory AuthFailure.invalidVerificationCode() = InvalidVerificationCode;
  const factory AuthFailure.invalidPhoneNumberAndPasswordCombination() =
      InvalidPhoneNumberAndPasswordCombination;
}

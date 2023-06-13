import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_failure.freezed.dart';
///A freezed union that represents the possible failures that can occur during the authentication process.
@freezed
abstract class AuthFailure with _$AuthFailure {
  const factory AuthFailure.serverError({
    required String failureDescription,
  }) = ServerError;
  const factory AuthFailure.alreadyRegisteredValue() = AlreadyRegisteredValue;
  const factory AuthFailure.invalidVerificationCodeAndPhoneNumberCombination() = InvalidVerificationCodeAndPhoneNumberCombination;
  const factory AuthFailure.invalidPhoneNumberAndPasswordCombination() = 
      InvalidPhoneNumberAndPasswordCombination;
}

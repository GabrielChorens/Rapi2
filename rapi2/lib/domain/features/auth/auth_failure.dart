import '../../../core/error_handle/failure.dart';

///A sealed class that represents the possible failures that can occur during the authentication process.
///They are: [ServerError], [AlreadyRegisteredValue], [InvalidVerificationCodeAndPhoneNumberCombination] and [InvalidPhoneNumberAndPasswordCombination].
sealed class AuthFailure extends Failure {
  const AuthFailure();
}

final class ServerError extends AuthFailure {
  @override
  final Failure? failureTrace;
  const ServerError({this.failureTrace});
}

final class AlreadyRegisteredValue extends AuthFailure {
  const AlreadyRegisteredValue();
}

final class InvalidVerificationCodeAndPhoneNumberCombination
    extends AuthFailure {
  const InvalidVerificationCodeAndPhoneNumberCombination();
}

final class InvalidPhoneNumberAndPasswordCombination extends AuthFailure {
  const InvalidPhoneNumberAndPasswordCombination();
}

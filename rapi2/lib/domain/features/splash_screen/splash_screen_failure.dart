import '../../../core/error_handle/failure.dart';

///A sealed class that represents the possible failures that can occur during the splash screen process.
///They are: [UserNotFound] and [LocationDisabled].
sealed class SplashScreenFailure extends Failure {
  const SplashScreenFailure();
}

final class UserNotFound extends SplashScreenFailure {
  const UserNotFound();
}



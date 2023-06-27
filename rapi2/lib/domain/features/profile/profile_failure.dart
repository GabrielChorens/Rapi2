import '../../../core/error_handle/failure.dart';

///A sealed class union that represents the possible failures that can occur during the profile edition and reading proccess.

sealed class ProfileFailure extends Failure {
  const ProfileFailure();
}

final class ServerError extends ProfileFailure {
  @override
  final Failure? failureTrace;
  const ServerError({required this.failureTrace});
}

final class StorageError extends ProfileFailure {
  @override
  final Failure? failureTrace;
  const StorageError({this.failureTrace});
}

final class NoUserFound extends ProfileFailure {
  const NoUserFound();
}

final class ImageSelectionFailure extends ProfileFailure {
    @override
  final Failure? failureTrace;
  const ImageSelectionFailure({required this.failureTrace});
}


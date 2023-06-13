import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_failure.freezed.dart';

///A freezed union that represents the possible failures that can occur during the profile edition and reading proccess.
@freezed
abstract class ProfileFailure with _$ProfileFailure {
  const factory ProfileFailure.serverError({
    required String failureDescription,
  }) = ServerError;
  const factory ProfileFailure.noUserFound({
    @Default('no_user_found') String failureDescription,}
  ) = NoUserFound;
}

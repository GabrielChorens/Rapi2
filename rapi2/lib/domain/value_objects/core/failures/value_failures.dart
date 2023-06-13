import 'package:freezed_annotation/freezed_annotation.dart';

part 'value_failures.freezed.dart';

@freezed
sealed class ValueFailure with _$ValueFailure {
  ///Common failures

  const factory ValueFailure.emptyField({
    @Default('empty_field') String failureMessage,
    String? detailedFailureMessage,
  }) = EmptyField;

  const factory ValueFailure.nullField({
    @Default('null_field') String failureMessage,
    String? detailedFailureMessage,
  }) = NullField;

  ///User failures

  const factory ValueFailure.invalidName({
    @Default('invalid_name') String failureMessage,
    String? detailedFailureMessage,
  }) = InvalidName;

  const factory ValueFailure.invalidEmail({
    @Default('invalid_email') String failureMessage,
    String? detailedFailureMessage,
  }) = InvalidEmail;

  const factory ValueFailure.shortPassword({
    @Default('short_password') String failureMessage,
    String? detailedFailureMessage,
  }) = ShortPassword;

  const factory ValueFailure.invalidNumber({
    @Default('invalid_number') String failureMessage,
    String? detailedFailureMessage,
  }) = InvalidNumber;

  const factory ValueFailure.invalidPhoneNumber({
    @Default('invalid_phone_number') String failureMessage,
    String? detailedFailureMessage,
  }) = InvalidPhoneNumber;


  ///Address failures
  const factory ValueFailure.invalidCoordinates({
    @Default('invalid_coordinates') String failureMessage,
    String? detailedFailureMessage,
  }) = InvalidCoordinates;

  ///Business failures
  const factory ValueFailure.invalidRating({
    @Default('invalid_rating') String failureMessage,
    String? detailedFailureMessage,
  }) = InvalidRating;
}

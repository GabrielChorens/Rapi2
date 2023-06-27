import '../../../../core/error_handle/failure.dart';

sealed class ValueFailure extends Failure {
  const ValueFailure();
}

//Common failures
final class EmptyField extends ValueFailure {
  const EmptyField();
}

final class NullField extends ValueFailure {
  const NullField();
}

//User failures
final class InvalidName extends ValueFailure {
  const InvalidName();
}

final class InvalidEmail extends ValueFailure {
  const InvalidEmail();
}

final class ShortPassword extends ValueFailure {
  const ShortPassword();
}

final class InvalidNumber extends ValueFailure {
  const InvalidNumber();
}

final class InvalidPhoneNumber extends ValueFailure {
  const InvalidPhoneNumber();
}

//Address failures
final class InvalidCoordinates extends ValueFailure {
  const InvalidCoordinates();
}

//Business failures
final class InvalidRating extends ValueFailure {
  const InvalidRating();
}

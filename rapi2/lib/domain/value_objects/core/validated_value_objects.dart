import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';

import '../../../core/error_handle/unexpected_error.dart';
import 'failures/value_failures.dart';

@immutable
abstract base class ValidatedValueObject<T> {
  const ValidatedValueObject();
  Either<ValueFailure, T> get value;

  /// Throws [UnexpectedError] containing the [ValueFailure] when [value] aint suposed to be a failure or returns the [value] if it is a success
  T getOrCrash() {
    return value.fold((f) {
      Error error = UnexpectedError(f);
      f.logger(error);
      throw error;
    }, id);
  }

  bool isValid() {
    return value.isRight();
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is ValidatedValueObject<T> && other.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'Value($value)';
}

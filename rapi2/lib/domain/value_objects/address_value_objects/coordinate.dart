import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../core/failures/value_failures.dart';
import '../core/validated_value_objects.dart';

part 'coordinate.freezed.dart';

@freezed
abstract class RawCoordinate with _$RawCoordinate{
  const factory RawCoordinate({
    required final double longitude,
    required final double latitude,
  }) = _RawCoordinate;
}

class Coordinate extends ValidatedValueObject<RawCoordinate> {

  @override
  final Either<ValueFailure, RawCoordinate> value;

  factory Coordinate(double longitude, double latitude) {
    if (longitude < -180 || longitude > 180 || latitude < -90 || latitude > 90) {
      return Coordinate._(
        left(ValueFailure.invalidCoordinates(detailedFailureMessage: 'longitude: $longitude, latitude: $latitude. Longitude must be between -180 and 180, latitude must be between -90 and 90')),
      );
    }

    return Coordinate._(
      right(RawCoordinate(longitude: longitude, latitude: latitude)),
    );
  }

  const Coordinate._(this.value);
}



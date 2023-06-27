import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'core/failures/value_failures.dart';
import 'core/validated_value_objects.dart';

part 'address_value_objects.freezed.dart';

///A simple data class that represents a raw address. It is used to validate the address before creating the Address value object.
@freezed
abstract class RawCoordinate with _$RawCoordinate{
  const factory RawCoordinate({
    required final double longitude,
    required final double latitude,
  }) = _RawCoordinate;
}

///A value object that represents a coordinate. It validates if the latitude and longitude are valid.
///The latitude must be between -90 and 90, and the longitude must be between -180 and 180.
///If the coordinates are invalid, it returns a ValueFailure.
final class Coordinate extends ValidatedValueObject<RawCoordinate> {

  @override
  final Either<ValueFailure, RawCoordinate> value;

  factory Coordinate(double longitude, double latitude) {
    if (longitude < -180 || longitude > 180 || latitude < -90 || latitude > 90) {
      return Coordinate._(
        left(const InvalidCoordinates()),
      );
    }

    return Coordinate._(
      right(RawCoordinate(longitude: longitude, latitude: latitude)),
    );
  }

  const Coordinate._(this.value);
}

///A value object that represents an address.
///It contains the following required fields: [int] id, [Coordinate] coordinates, [String] addressName and [String] addressDetailed.
@freezed
abstract class AddressValueObject with _$AddressValueObject{
  factory AddressValueObject({
    required final String name,
    required final Coordinate coordinates,
    required final String addressName,
    required final String addressDetailed,
  }) = _AddressValueObject;
}
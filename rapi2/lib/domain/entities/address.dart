import 'package:freezed_annotation/freezed_annotation.dart';

import '../value_objects/address_value_objects/coordinate.dart';

part 'address.freezed.dart';

@freezed
abstract class Address with _$Address{
  factory Address({
    required final int id,
    required final Coordinate coordinates,
    required final String addressName,
    required final String addressDetailed,
  }) = _Address;
}
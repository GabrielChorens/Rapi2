import 'package:freezed_annotation/freezed_annotation.dart';

import '../value_objects/address_value_objects.dart';

part 'address.freezed.dart';

///An Entity that represents an address.
///It contains the following required fields: [int] id, [Coordinate] coordinates, [String] addressName and [String] addressDetailed.  
@freezed
abstract class Address with _$Address{
  factory Address({
    required final int id,
    required final Coordinate coordinates,
    required final String addressName,
    required final String addressDetailed,
  }) = _Address;
}
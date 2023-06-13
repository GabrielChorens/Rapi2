import 'package:freezed_annotation/freezed_annotation.dart';

import '../value_objects/address_value_objects.dart';

part 'address.freezed.dart';

///An Entity that represents an address.
@freezed
abstract class Address with _$Address{
  factory Address({
    required final int id,
    required AddressValueObject address,
  }) = _Address;
}
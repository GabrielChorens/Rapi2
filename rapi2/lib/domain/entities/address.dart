import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rapi2/domain/entities/core/IEntity.dart';

import '../value_objects/address_value_objects.dart';

part 'address.freezed.dart';


abstract interface class IAddress implements IEntity{
  AddressValueObject get address;
}

///An Entity that represents an address.
@freezed
abstract class Address with _$Address implements IAddress{
  factory Address({
    required final int id,
    required final AddressValueObject address,
  }) = _Address;
}
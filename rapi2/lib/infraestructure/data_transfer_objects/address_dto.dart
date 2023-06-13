import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/address.dart';
import '../../domain/value_objects/address_value_objects.dart';

part 'address_dto.freezed.dart';

@freezed
abstract class AddressValueObjectDTO with _$AddressValueObjectDTO {

  const AddressValueObjectDTO._();

  const factory AddressValueObjectDTO({
    required final String name,
    required final double latitude,
    required final double longitude,
    required final String addressName,
    required final String addressDetailed,
  }) = _AddressValueObjectDTO;

  factory AddressValueObjectDTO.fromDomain(AddressValueObject address) {
    final coordinates = address.coordinates.getOrCrash();
    return AddressValueObjectDTO(
      name: address.name,
      latitude: coordinates.latitude,
      longitude: coordinates.longitude,
      addressName: address.addressName,
      addressDetailed: address.addressDetailed,
    );
  }

  AddressValueObject toDomain() {
    return AddressValueObject(
      name: name,
      coordinates: Coordinate(longitude, latitude),
      addressName: addressName,
      addressDetailed: addressDetailed,
    );
  }

  factory AddressValueObjectDTO.fromJson(Map<String, dynamic> json) {
    return AddressValueObjectDTO(
      name: json['name'] as String,
      latitude: json['latitude'] as double,
      longitude: json['longitude'] as double,
      addressName: json['address_name'] as String,
      addressDetailed: json['address_note'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'latitude': latitude,
      'longitude': longitude,
      'address_name': addressName,
      'address_note': addressDetailed,
    };
  }
}

@freezed
abstract class AddressDTO with _$AddressDTO {
  const AddressDTO._();

  const factory AddressDTO({
    required final int id,
    required final AddressValueObjectDTO address,
  }) = _AddressDTO;

  factory AddressDTO.fromDomain(Address address) {
    return AddressDTO(
      id: address.id,
      address: AddressValueObjectDTO.fromDomain(address.address),
    );
  }

  Address toDomain() {
    return Address(
      id: id,
      address: address.toDomain(),
    );
  }
  
  factory AddressDTO.fromJson(Map<String, dynamic> json) {
    return AddressDTO(
      id: json['id'] as int,
      address: AddressValueObjectDTO.fromJson(json),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      ...address.toJson(),
    };
  }

}

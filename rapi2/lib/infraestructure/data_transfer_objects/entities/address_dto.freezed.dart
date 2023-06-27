// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'address_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AddressValueObjectDTO {
  String get name => throw _privateConstructorUsedError;
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;
  String get addressName => throw _privateConstructorUsedError;
  String get addressDetailed => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddressValueObjectDTOCopyWith<AddressValueObjectDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressValueObjectDTOCopyWith<$Res> {
  factory $AddressValueObjectDTOCopyWith(AddressValueObjectDTO value,
          $Res Function(AddressValueObjectDTO) then) =
      _$AddressValueObjectDTOCopyWithImpl<$Res, AddressValueObjectDTO>;
  @useResult
  $Res call(
      {String name,
      double latitude,
      double longitude,
      String addressName,
      String addressDetailed});
}

/// @nodoc
class _$AddressValueObjectDTOCopyWithImpl<$Res,
        $Val extends AddressValueObjectDTO>
    implements $AddressValueObjectDTOCopyWith<$Res> {
  _$AddressValueObjectDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? addressName = null,
    Object? addressDetailed = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      addressName: null == addressName
          ? _value.addressName
          : addressName // ignore: cast_nullable_to_non_nullable
              as String,
      addressDetailed: null == addressDetailed
          ? _value.addressDetailed
          : addressDetailed // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AddressValueObjectDTOCopyWith<$Res>
    implements $AddressValueObjectDTOCopyWith<$Res> {
  factory _$$_AddressValueObjectDTOCopyWith(_$_AddressValueObjectDTO value,
          $Res Function(_$_AddressValueObjectDTO) then) =
      __$$_AddressValueObjectDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      double latitude,
      double longitude,
      String addressName,
      String addressDetailed});
}

/// @nodoc
class __$$_AddressValueObjectDTOCopyWithImpl<$Res>
    extends _$AddressValueObjectDTOCopyWithImpl<$Res, _$_AddressValueObjectDTO>
    implements _$$_AddressValueObjectDTOCopyWith<$Res> {
  __$$_AddressValueObjectDTOCopyWithImpl(_$_AddressValueObjectDTO _value,
      $Res Function(_$_AddressValueObjectDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? addressName = null,
    Object? addressDetailed = null,
  }) {
    return _then(_$_AddressValueObjectDTO(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      addressName: null == addressName
          ? _value.addressName
          : addressName // ignore: cast_nullable_to_non_nullable
              as String,
      addressDetailed: null == addressDetailed
          ? _value.addressDetailed
          : addressDetailed // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AddressValueObjectDTO extends _AddressValueObjectDTO {
  const _$_AddressValueObjectDTO(
      {required this.name,
      required this.latitude,
      required this.longitude,
      required this.addressName,
      required this.addressDetailed})
      : super._();

  @override
  final String name;
  @override
  final double latitude;
  @override
  final double longitude;
  @override
  final String addressName;
  @override
  final String addressDetailed;

  @override
  String toString() {
    return 'AddressValueObjectDTO(name: $name, latitude: $latitude, longitude: $longitude, addressName: $addressName, addressDetailed: $addressDetailed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddressValueObjectDTO &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.addressName, addressName) ||
                other.addressName == addressName) &&
            (identical(other.addressDetailed, addressDetailed) ||
                other.addressDetailed == addressDetailed));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, name, latitude, longitude, addressName, addressDetailed);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddressValueObjectDTOCopyWith<_$_AddressValueObjectDTO> get copyWith =>
      __$$_AddressValueObjectDTOCopyWithImpl<_$_AddressValueObjectDTO>(
          this, _$identity);
}

abstract class _AddressValueObjectDTO extends AddressValueObjectDTO {
  const factory _AddressValueObjectDTO(
      {required final String name,
      required final double latitude,
      required final double longitude,
      required final String addressName,
      required final String addressDetailed}) = _$_AddressValueObjectDTO;
  const _AddressValueObjectDTO._() : super._();

  @override
  String get name;
  @override
  double get latitude;
  @override
  double get longitude;
  @override
  String get addressName;
  @override
  String get addressDetailed;
  @override
  @JsonKey(ignore: true)
  _$$_AddressValueObjectDTOCopyWith<_$_AddressValueObjectDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AddressDTO {
  int get id => throw _privateConstructorUsedError;
  AddressValueObjectDTO get address => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddressDTOCopyWith<AddressDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressDTOCopyWith<$Res> {
  factory $AddressDTOCopyWith(
          AddressDTO value, $Res Function(AddressDTO) then) =
      _$AddressDTOCopyWithImpl<$Res, AddressDTO>;
  @useResult
  $Res call({int id, AddressValueObjectDTO address});

  $AddressValueObjectDTOCopyWith<$Res> get address;
}

/// @nodoc
class _$AddressDTOCopyWithImpl<$Res, $Val extends AddressDTO>
    implements $AddressDTOCopyWith<$Res> {
  _$AddressDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? address = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as AddressValueObjectDTO,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressValueObjectDTOCopyWith<$Res> get address {
    return $AddressValueObjectDTOCopyWith<$Res>(_value.address, (value) {
      return _then(_value.copyWith(address: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AddressDTOCopyWith<$Res>
    implements $AddressDTOCopyWith<$Res> {
  factory _$$_AddressDTOCopyWith(
          _$_AddressDTO value, $Res Function(_$_AddressDTO) then) =
      __$$_AddressDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, AddressValueObjectDTO address});

  @override
  $AddressValueObjectDTOCopyWith<$Res> get address;
}

/// @nodoc
class __$$_AddressDTOCopyWithImpl<$Res>
    extends _$AddressDTOCopyWithImpl<$Res, _$_AddressDTO>
    implements _$$_AddressDTOCopyWith<$Res> {
  __$$_AddressDTOCopyWithImpl(
      _$_AddressDTO _value, $Res Function(_$_AddressDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? address = null,
  }) {
    return _then(_$_AddressDTO(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as AddressValueObjectDTO,
    ));
  }
}

/// @nodoc

class _$_AddressDTO extends _AddressDTO {
  const _$_AddressDTO({required this.id, required this.address}) : super._();

  @override
  final int id;
  @override
  final AddressValueObjectDTO address;

  @override
  String toString() {
    return 'AddressDTO(id: $id, address: $address)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddressDTO &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.address, address) || other.address == address));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, address);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddressDTOCopyWith<_$_AddressDTO> get copyWith =>
      __$$_AddressDTOCopyWithImpl<_$_AddressDTO>(this, _$identity);
}

abstract class _AddressDTO extends AddressDTO {
  const factory _AddressDTO(
      {required final int id,
      required final AddressValueObjectDTO address}) = _$_AddressDTO;
  const _AddressDTO._() : super._();

  @override
  int get id;
  @override
  AddressValueObjectDTO get address;
  @override
  @JsonKey(ignore: true)
  _$$_AddressDTOCopyWith<_$_AddressDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

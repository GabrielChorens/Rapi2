// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shopping_cart.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ShoppingCart {
  int get id => throw _privateConstructorUsedError;
  int get bussinesId => throw _privateConstructorUsedError;
  double get totalPrice => throw _privateConstructorUsedError;
  List<CartItem> get products => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ShoppingCartCopyWith<ShoppingCart> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShoppingCartCopyWith<$Res> {
  factory $ShoppingCartCopyWith(
          ShoppingCart value, $Res Function(ShoppingCart) then) =
      _$ShoppingCartCopyWithImpl<$Res, ShoppingCart>;
  @useResult
  $Res call(
      {int id, int bussinesId, double totalPrice, List<CartItem> products});
}

/// @nodoc
class _$ShoppingCartCopyWithImpl<$Res, $Val extends ShoppingCart>
    implements $ShoppingCartCopyWith<$Res> {
  _$ShoppingCartCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? bussinesId = null,
    Object? totalPrice = null,
    Object? products = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      bussinesId: null == bussinesId
          ? _value.bussinesId
          : bussinesId // ignore: cast_nullable_to_non_nullable
              as int,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<CartItem>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ShoppingCartCopyWith<$Res>
    implements $ShoppingCartCopyWith<$Res> {
  factory _$$_ShoppingCartCopyWith(
          _$_ShoppingCart value, $Res Function(_$_ShoppingCart) then) =
      __$$_ShoppingCartCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id, int bussinesId, double totalPrice, List<CartItem> products});
}

/// @nodoc
class __$$_ShoppingCartCopyWithImpl<$Res>
    extends _$ShoppingCartCopyWithImpl<$Res, _$_ShoppingCart>
    implements _$$_ShoppingCartCopyWith<$Res> {
  __$$_ShoppingCartCopyWithImpl(
      _$_ShoppingCart _value, $Res Function(_$_ShoppingCart) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? bussinesId = null,
    Object? totalPrice = null,
    Object? products = null,
  }) {
    return _then(_$_ShoppingCart(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      bussinesId: null == bussinesId
          ? _value.bussinesId
          : bussinesId // ignore: cast_nullable_to_non_nullable
              as int,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double,
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<CartItem>,
    ));
  }
}

/// @nodoc

class _$_ShoppingCart implements _ShoppingCart {
  _$_ShoppingCart(
      {required this.id,
      required this.bussinesId,
      required this.totalPrice,
      required final List<CartItem> products})
      : _products = products;

  @override
  final int id;
  @override
  final int bussinesId;
  @override
  final double totalPrice;
  final List<CartItem> _products;
  @override
  List<CartItem> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  String toString() {
    return 'ShoppingCart(id: $id, bussinesId: $bussinesId, totalPrice: $totalPrice, products: $products)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShoppingCart &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.bussinesId, bussinesId) ||
                other.bussinesId == bussinesId) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice) &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, bussinesId, totalPrice,
      const DeepCollectionEquality().hash(_products));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ShoppingCartCopyWith<_$_ShoppingCart> get copyWith =>
      __$$_ShoppingCartCopyWithImpl<_$_ShoppingCart>(this, _$identity);
}

abstract class _ShoppingCart implements ShoppingCart {
  factory _ShoppingCart(
      {required final int id,
      required final int bussinesId,
      required final double totalPrice,
      required final List<CartItem> products}) = _$_ShoppingCart;

  @override
  int get id;
  @override
  int get bussinesId;
  @override
  double get totalPrice;
  @override
  List<CartItem> get products;
  @override
  @JsonKey(ignore: true)
  _$$_ShoppingCartCopyWith<_$_ShoppingCart> get copyWith =>
      throw _privateConstructorUsedError;
}

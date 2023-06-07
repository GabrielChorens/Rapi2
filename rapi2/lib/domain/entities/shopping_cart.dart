import 'package:freezed_annotation/freezed_annotation.dart';
import '../value_objects/shoping_cart_value_objects.dart';

part 'shopping_cart.freezed.dart';

///An entity that represents a shopping cart.
///It contains the following required fields: [int] id, [int] bussinesId, [double] totalPrice and [List] of [CartItem] products.
@freezed 
abstract class ShoppingCart with _$ShoppingCart{
  factory ShoppingCart({
    required final int id,
    required final int bussinesId,
    required final double totalPrice,
    required final List<CartItem> products,
  }) = _ShoppingCart;
}

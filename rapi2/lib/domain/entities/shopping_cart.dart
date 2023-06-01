import 'package:freezed_annotation/freezed_annotation.dart';
import '../value_objects/shopping_cart_value_objects/cart_item.dart';

part 'shopping_cart.freezed.dart';

@freezed 
abstract class ShoppingCart with _$ShoppingCart{
  factory ShoppingCart({
    required final int id,
    required final int bussinesId,
    required final double totalPrice,
    required final List<CartItem> products,
  }) = _ShoppingCart;
}

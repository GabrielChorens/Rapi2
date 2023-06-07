import 'package:freezed_annotation/freezed_annotation.dart';

part 'shoping_cart_value_objects.freezed.dart';

///A value object that represents a cart item in the shopping cart. 
///Contains the product ID and the quantity of the product. 
///Its a more elegant alternative instead of managing a List of Product entities.
@freezed
abstract class CartItem with _$CartItem {
  factory CartItem({
    required int productQuantity,
    required final int productID,
  }) = _CartItem;
}

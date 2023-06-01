import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_item.freezed.dart';

@freezed
abstract class CartItem with _$CartItem {
  factory CartItem({
    required int productQuantity,
    required final int productID,
  }) = _CartItem;
}


import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.freezed.dart';

@freezed
class Product with _$Product {

  const factory Product({
    required final int id,
    required final String name,
    required final String description,
    required final double price,
    required final int deliveryTime,
    final String? weight,
    final int? stock,
    required final String pictureURL,
  }) = _Product;


}
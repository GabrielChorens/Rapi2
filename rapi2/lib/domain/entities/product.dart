
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.freezed.dart';

///An entity that represents a product.
///It contains the following required fields: [int] id, [String] name, [String] description, [double] price, [int] deliveryTime and [String] pictureURL.
///It contains the following optional fields: [String] weight and [int] stock.
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
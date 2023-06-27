
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rapi2/domain/entities/core/IEntity.dart';

part 'product.freezed.dart';

abstract interface class IProduct implements IEntity{
  String get name;
  String get description;
  double get price;
  String get pictureURL;
}

///An entity that represents a product.
///It contains the following required fields: [int] id, [String] name, [String] description, [double] price, [int] deliveryTime and [String] pictureURL.
///It contains the following optional fields: [String] weight and [int] stock.
@freezed
abstract class Product with _$Product implements IProduct{
  const factory Product({
    required final int id,
    required final String name,
    required final String description,
    required final double price,
    required final int deliveryTime,
    required final String? weight,
    required final int? stock,
    required final String pictureURL,
  }) = _Product;


}
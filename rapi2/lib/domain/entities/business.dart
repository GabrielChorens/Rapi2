import 'package:freezed_annotation/freezed_annotation.dart';

import '../value_objects/address_value_objects.dart';
import '../value_objects/bussiness_value_objects.dart';
import 'product.dart';

part 'business.freezed.dart';

///An Entity that represents a business. It contains all the information of a business.
///It contains the following required fields: [int] id, [String] name, [String] description, [Rating] rating, [String] address, [int] deliveryTime, [String] businessPictureURL and [List] of [Product] products.
///It contains the following optional fields: [String] phoneNumber, [Coordinate] coordinates and [bool] bookingEnabled.
@freezed
abstract class Business with _$Business {
  const factory Business({
    required final int id,
    required final String name,
    required final String description,
    final String? phoneNumber,
    required final Rating rating,
    required final String address,
    final Coordinate? coordinates,
    required final int deliveryTime,
    final bool? bookingEnabled,
    required final String businessPictureURL,
    required final List<Product> products,
  }) = _Business;
}



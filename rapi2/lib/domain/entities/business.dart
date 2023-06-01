import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rapi2/domain/entities/product.dart';
import 'package:rapi2/domain/value_objects/address_value_objects/coordinate.dart';

import '../value_objects/business_value_objects/rating.dart';

part 'business.freezed.dart';

@freezed
class Business with _$Business {
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



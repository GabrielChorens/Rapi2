import 'package:freezed_annotation/freezed_annotation.dart';

import 'business.dart';

part 'category.freezed.dart';

///An entity that represents a category.
///It contains the following required fields: [int] id, [String] name and [String] pictureURL.
///It contains the following optional fields: [List] of [Business] businesses.
@freezed
abstract class Category with _$Category{
  const factory Category({
    required int id,
    required String name,
    required String pictureURL,
    List<Business>? businesses,
  }) = _Category;
}
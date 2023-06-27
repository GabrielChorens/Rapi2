import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rapi2/domain/entities/core/IEntity.dart';

import 'business.dart';

part 'category.freezed.dart';

abstract interface class ICategory implements IEntity{
  String get name;
  String get pictureURL;
}

///An entity that represents a category.
///It contains the following required fields: [int] id, [String] name and [String] pictureURL.
///It contains the following optional fields: [List] of [Business] businesses.
@freezed
abstract class Category with _$Category implements ICategory{
  const factory Category({
    required int id,
    required String name,
    required String pictureURL,
    required List<Business>? businesses,
  }) = _Category;
}
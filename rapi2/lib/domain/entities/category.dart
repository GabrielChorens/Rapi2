import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rapi2/domain/entities/business.dart';

part 'category.freezed.dart';

@freezed
abstract class Category with _$Category{
  const factory Category({
    required int id,
    required String name,
    required String pictureURL,
    List<Business>? businesses,
  }) = _Category;
}
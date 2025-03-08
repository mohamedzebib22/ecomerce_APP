import 'package:ecomerce_app/domain/Entity/category_and_brand_response.dart';
import 'package:ecomerce_app/domain/Entity/get_product_entity.dart';

class GetProductWishListResponseEntity {
  GetProductWishListResponseEntity({
    this.status,
    this.count,
    this.data,
  });

  String? status;
  num? count;
  List<WishListItemEntity>? data;
}

class WishListItemEntity {
  WishListItemEntity({
    this.sold,
    this.images,
    this.subcategory,
    this.ratingsQuantity,
    this.id,
    this.title,
    this.slug,
    this.description,
    this.quantity,
    this.price,
    this.imageCover,
    this.category,
    this.brand,
    this.ratingsAverage,
    this.createdAt,
    this.updatedAt,
    this.v,
  });

  num? sold;
  List<String>? images;
  List<SubcategoryEntity>? subcategory;
  num? ratingsQuantity;
  String? id;
  String? title;
  String? slug;
  String? description;
  num? quantity;
  num? price;
  String? imageCover;
  CategoryAndBrandEntity? category;
  CategoryAndBrandEntity? brand;
  num? ratingsAverage;
  String? createdAt;
  String? updatedAt;
  num? v;
}

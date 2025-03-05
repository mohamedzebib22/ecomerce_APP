import 'package:ecomerce_app/data/models/get_category_and_brand/get_category_and_brand.dart';
import 'package:ecomerce_app/data/models/get_product/get_product_dm.dart';
import 'package:ecomerce_app/domain/Entity/category_and_brand_response.dart';
import 'package:ecomerce_app/domain/Entity/get_product_entity.dart';

class GetCartItemResponseEntity {
  GetCartItemResponseEntity({
    this.status,
    this.numOfCartItems,
    this.cartId,
    this.data,
  });

  
  String? status;
  num? numOfCartItems;
  String? cartId;
  GetDataCartEntity? data;
}

class GetDataCartEntity {
  GetDataCartEntity({
    this.id,
    this.cartOwner,
    this.products,
    this.createdAt,
    this.updatedAt,
    this.v,
    this.totalCartPrice,
  });

  
  String? id;
  String? cartOwner;
  List<GetCartProductsEntity>? products;
  String? createdAt;
  String? updatedAt;
  num? v;
  num? totalCartPrice;
}

class GetCartProductsEntity {
  GetCartProductsEntity({
    this.count,
    this.id,
    this.product,
    this.price,
  });

  
  num? count;
  String? id;
  CartItemEntity? product;
  num? price;
}

class CartItemEntity {
  CartItemEntity({
    this.subcategory,
    this.id,
    this.title,
    this.quantity,
    this.imageCover,
    this.category,
    this.brand,
    this.ratingsAverage,
  });

  
  List<SubcategoryEntity>? subcategory;
  String? id;
  String? title;
  num? quantity;
  String? imageCover;
  CategoryAndBrandEntity? category;
  CategoryAndBrandEntity? brand;
  num? ratingsAverage;
}

import 'package:ecomerce_app/data/models/get_category_and_brand/get_category_and_brand.dart';
import 'package:ecomerce_app/data/models/get_product/get_product_dm.dart';
import 'package:ecomerce_app/domain/Entity/get_product_wish_list.dart';

class GetProductWishListResponseDm extends GetProductWishListResponseEntity {
  GetProductWishListResponseDm({
    super.status,
    super.count,
    this.message,
    this.statusMsg,
    super.data,
  });

  GetProductWishListResponseDm.fromJson(dynamic json) {
    status = json['status'];
    statusMsg = json['statusMsg'];
    message = json['message'];
    count = json['count'];
    if (json['data'] != null) {
      data = [];
      json['data'].forEach((v) {
        data?.add(WishListItemDm.fromJson(v));
      });
    }
  }
  String? statusMsg;
  String? message;
}

class WishListItemDm extends WishListItemEntity {
  WishListItemDm({
    super.sold,
    super.images,
    super.subcategory,
    super.ratingsQuantity,
    super.id,
    super.title,
    super.slug,
    super.description,
    super.quantity,
    super.price,
    super.imageCover,
    super.category,
    super.brand,
    super.ratingsAverage,
    super.createdAt,
    super.updatedAt,
    super.v,
  });

  WishListItemDm.fromJson(dynamic json) {
    sold = json['sold'];
    images = json['images'] != null ? json['images'].cast<String>() : [];
    if (json['subcategory'] != null) {
      subcategory = [];
      json['subcategory'].forEach((v) {
        subcategory?.add(SubcategoryDm.fromJson(v));
      });
    }
    ratingsQuantity = json['ratingsQuantity'];
    id = json['_id'];
    title = json['title'];
    slug = json['slug'];
    description = json['description'];
    quantity = json['quantity'];
    price = json['price'];
    imageCover = json['imageCover'];
    category = json['category'] != null
        ? CategoryAndBrandDM.fromJson(json['category'])
        : null;
    brand = json['brand'] != null
        ? CategoryAndBrandDM.fromJson(json['brand'])
        : null;
    ratingsAverage = json['ratingsAverage'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    v = json['__v'];
    id = json['id'];
  }
}

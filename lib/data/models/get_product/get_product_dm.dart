import 'package:ecomerce_app/data/models/get_category_and_brand/get_category_and_brand.dart';
import 'package:ecomerce_app/domain/Entity/get_product_entity.dart';

class GetProductDm extends GetProductEntity {
  GetProductDm({
    super.results,
    super.metadata,
    this.message,
    this.statusMsg,
    super.data,
  });

  GetProductDm.fromJson(dynamic json) {
    results = json['results'];
    results = json['statusMsg'];
    results = json['message'];
    metadata = json['metadata'] != null
        ? ProductMetadataDm.fromJson(json['metadata'])
        : null;
    if (json['data'] != null) {
      data = [];
      json['data'].forEach((v) {
        data?.add(ProductDm.fromJson(v));
      });
    }
  }
  String? statusMsg;
  String? message;
}

class ProductDm extends ProductEntity {
  ProductDm({
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
    this.createdAt,
    this.updatedAt,
  });

  ProductDm.fromJson(dynamic json) {
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
        ? CategoryAndBrandResponseDm.fromJson(json['category'])
        : null;
    brand = json['brand'] != null
        ? CategoryAndBrandResponseDm.fromJson(json['brand'])
        : null;
    ratingsAverage = json['ratingsAverage'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    id = json['id'];
  }

  String? createdAt;
  String? updatedAt;
}

class SubcategoryDm extends SubcategoryEntity {
  SubcategoryDm({
    super.id,
    super.name,
    super.slug,
    super.category,
  });

  SubcategoryDm.fromJson(dynamic json) {
    id = json['_id'];
    name = json['name'];
    slug = json['slug'];
    category = json['category'];
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['_id'] = id;
    map['name'] = name;
    map['slug'] = slug;
    map['category'] = category;
    return map;
  }
}

class ProductMetadataDm extends ProductMetadataEntity {
  ProductMetadataDm({
    super.currentPage,
    super.numberOfPages,
    super.limit,
    super.nextPage,
  });

  ProductMetadataDm.fromJson(dynamic json) {
    currentPage = json['currentPage'];
    numberOfPages = json['numberOfPages'];
    limit = json['limit'];
    nextPage = json['nextPage'];
  }
}

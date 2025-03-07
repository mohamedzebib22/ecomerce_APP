import 'package:ecomerce_app/data/models/get_category_and_brand/get_category_and_brand.dart';
import 'package:ecomerce_app/data/models/get_product/get_product_dm.dart';
import 'package:ecomerce_app/domain/Entity/get_cart_item_entity.dart';

class GetCartItemResponseDm extends GetCartItemResponseEntity {
  GetCartItemResponseDm({
    super.status,
    super.numOfCartItems,
    super.cartId,
    this.message,
    this.statusMsg,
    super.data,
  });

  GetCartItemResponseDm.fromJson(dynamic json) {
    status = json['status'];
    message = json['message'];
    statusMsg = json['statusMsg'];
    numOfCartItems = json['numOfCartItems'];
    cartId = json['cartId'];
    data = json['data'] != null ? GetDataCartDm.fromJson(json['data']) : null;
  }
  String? message;
  String? statusMsg;
}

class GetDataCartDm extends GetDataCartEntity {
  GetDataCartDm({
    super.id,
    super.cartOwner,
    super.products,
    super.createdAt,
    super.updatedAt,
    super.v,
    super.totalCartPrice,
  });

  GetDataCartDm.fromJson(dynamic json) {
    id = json['_id'];
    cartOwner = json['cartOwner'];
    if (json['products'] != null) {
      products = [];
      json['products'].forEach((v) {
        products?.add(GetCartProductsDm.fromJson(v));
      });
    }
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    v = json['__v'];
    totalCartPrice = json['totalCartPrice'];
  }
}

class GetCartProductsDm extends GetCartProductsEntity {
  GetCartProductsDm({
    super.count,
    super.id,
    super.product,
    super.price,
  });

  GetCartProductsDm.fromJson(dynamic json) {
    count = json['count'];
    id = json['_id'];
    product =
        json['product'] != null ? CartItemDm.fromJson(json['product']) : null;
    price = json['price'];
  }
}

class CartItemDm extends CartItemEntity {
  CartItemDm({
    super.subcategory,
    super.id,
    super.title,
    super.quantity,
    super.imageCover,
    super.category,
    super.brand,
    super.ratingsAverage,
  });

  CartItemDm.fromJson(dynamic json) {
    if (json['subcategory'] != null) {
      subcategory = [];
      json['subcategory'].forEach((v) {
        subcategory?.add(SubcategoryDm.fromJson(v));
      });
    }
    id = json['_id'];
    title = json['title'];
    quantity = json['quantity'];
    imageCover = json['imageCover'];
    category = json['category'] != null
        ? CategoryAndBrandDM.fromJson(json['category'])
        : null;
    brand = json['brand'] != null
        ? CategoryAndBrandDM.fromJson(json['brand'])
        : null;
    ratingsAverage = json['ratingsAverage'];
    id = json['id'];
  }
}

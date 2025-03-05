import 'package:ecomerce_app/domain/Entity/post_cart_entity.dart';

class PostCartResponseDm extends PostCartResponseEntity {
  PostCartResponseDm({
    super.status,
    super.message,
    super.numOfCartItems,
    super.cartId,
    this.statusMsg,
    super.data,
  });

  PostCartResponseDm.fromJson(dynamic json) {
    status = json['status'];
    statusMsg = json['statusMsg'];
    message = json['message'];
    numOfCartItems = json['numOfCartItems'];
    cartId = json['cartId'];
    data = json['data'] != null ? CartDataDm.fromJson(json['data']) : null;
  }
  String? statusMsg;
}

class CartDataDm extends CartDataEntity {
  CartDataDm({
    super.id,
    super.cartOwner,
    super.products,
    super.createdAt,
    super.updatedAt,
    super.v,
    super.totalCartPrice,
  });

  CartDataDm.fromJson(dynamic json) {
    id = json['_id'];
    cartOwner = json['cartOwner'];
    if (json['products'] != null) {
      products = [];
      json['products'].forEach((v) {
        products?.add(PostAndGetProductDm.fromJson(v));
      });
    }
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    v = json['__v'];
    totalCartPrice = json['totalCartPrice'];
  }
}

class PostAndGetProductDm extends PostAndGetProductEntity {
  PostAndGetProductDm({
    super.count,
    super.id,
    super.product,
    super.price,
  });

  PostAndGetProductDm.fromJson(dynamic json) {
    count = json['count'];
    id = json['_id'];
    product = json['product'];
    price = json['price'];
  }
}

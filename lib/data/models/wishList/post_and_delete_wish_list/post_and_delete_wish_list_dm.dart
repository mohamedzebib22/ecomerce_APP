import 'package:ecomerce_app/domain/Entity/post_and_delete_wish_list.dart';

class PostAndDeleteWishListResponseDm extends PostAndDeleteWishListResponseEntity{
  PostAndDeleteWishListResponseDm({
      super.status, 
      super.message, 
      this.statusMsg,
      super.data,});

  PostAndDeleteWishListResponseDm.fromJson(dynamic json) {
    status = json['status'];
    message = json['message'];
    data = json['data'] != null ? json['data'].cast<String>() : [];
  }
  String? statusMsg;

}
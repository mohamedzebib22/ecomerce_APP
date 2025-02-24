import 'package:ecomerce_app/domain/Entity/category_and_brand_response.dart';

class CategoryAndBrandResponseDm extends CategoryAndBrandResponseEntity {
  CategoryAndBrandResponseDm({
      super.results, 
      super.metadata, 
      super.statusMsg,
      this.message,
      super.data,});

  CategoryAndBrandResponseDm.fromJson(dynamic json) {
    results = json['results'];
    statusMsg = json['statusMsg'];
    message = json['message'];
    metadata = json['metadata'] != null ? MetadataDm.fromJson(json['metadata']) : null;
    if (json['data'] != null) {
      data = [];
      json['data'].forEach((v) {
        data?.add(CategoryAndBrandDM.fromJson(v));
      });
    }
  }
  
  
  String? message;
  

}

class CategoryAndBrandDM extends CategoryAndBrandEntity {
  CategoryAndBrandDM({
      super.id, 
      super.name, 
      super.slug, 
      super.image, 
      this.createdAt, 
      this.updatedAt,});

  CategoryAndBrandDM.fromJson(dynamic json) {
    id = json['_id'];
    name = json['name'];
    slug = json['slug'];
    image = json['image'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
  }
 
  String? createdAt;
  String? updatedAt;

  

}

class MetadataDm extends MetadataEntity {
  MetadataDm({
      super.currentPage, 
      super.numberOfPages, 
      super.limit,});

  MetadataDm.fromJson(dynamic json) {
    currentPage = json['currentPage'];
    numberOfPages = json['numberOfPages'];
    limit = json['limit'];
  }
  

 

}
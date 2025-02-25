
 import 'package:ecomerce_app/core/errors/faliures.dart';
import 'package:ecomerce_app/domain/Entity/category_and_brand_response.dart';

class CategoryAndBrandState {}

 class CategoryInitial extends CategoryAndBrandState {}
 class CategoryLoading extends CategoryAndBrandState {}
 class CategorySucsess extends CategoryAndBrandState {
  final CategoryAndBrandResponseEntity categoryAndBrandEntity;

  CategorySucsess({required this.categoryAndBrandEntity});
 }
 class CategoryFaluire extends CategoryAndBrandState {
  final Faliures errMessage;

  CategoryFaluire({required this.errMessage});
 }

 
 class BrandInitial extends CategoryAndBrandState {}
 class BrandLoading extends CategoryAndBrandState {}
 class BrandSucsess extends CategoryAndBrandState {
  final CategoryAndBrandResponseEntity categoryAndBrandEntity;

  BrandSucsess({required this.categoryAndBrandEntity});
 }
 class BrandFaluire extends CategoryAndBrandState {
  final Faliures errMessage;

  BrandFaluire({required this.errMessage});
 }

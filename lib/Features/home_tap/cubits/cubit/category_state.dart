
 import 'package:ecomerce_app/core/errors/faliures.dart';
import 'package:ecomerce_app/domain/Entity/category_and_brand_response.dart';

class CategoryState {}

 class CategoryInitial extends CategoryState {}
 class CategoryLoading extends CategoryState {}
 class CategorySucsess extends CategoryState {
  final CategoryAndBrandResponseEntity categoryAndBrandEntity;

  CategorySucsess({required this.categoryAndBrandEntity});
 }
 class CategoryFaluire extends CategoryState {
  final Faliures errMessage;

  CategoryFaluire({required this.errMessage});
 }

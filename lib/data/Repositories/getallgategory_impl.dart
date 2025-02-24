import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:ecomerce_app/core/errors/faliures.dart';
import 'package:ecomerce_app/data/data_source/remote_data_source/get_all_category_remote_datasource_impl.dart';
import 'package:ecomerce_app/domain/Entity/category_and_brand_response.dart';
import 'package:ecomerce_app/domain/Repositories/getCategory/get_all_category.dart';
import 'package:ecomerce_app/domain/Repositories/remote_data_source/get_gategory_remote_data_source.dart';
import 'package:injectable/injectable.dart';

@Injectable(as:GetAllCategoryRepositories )
class GetallgategoryandImpl implements GetAllCategoryRepositories{
  final GetGategoryRemoteDataSource getGategoryRemoteDataSource;

  GetallgategoryandImpl({required this.getGategoryRemoteDataSource});
  @override
  Future<Either<Faliures, CategoryAndBrandResponseEntity>> getAllGategory() async{
    var either =await getGategoryRemoteDataSource.getAllGategory();
    return either.fold((error)=> Left(error), (response) => Right(response));
  }

}
import 'package:dartz/dartz.dart';
import 'package:ecomerce_app/core/errors/faliures.dart';
import 'package:ecomerce_app/data/data_source/remote_data_source/get_all_brand_remote_datasource_Impl.dart';
import 'package:ecomerce_app/domain/Entity/category_and_brand_response.dart';
import 'package:ecomerce_app/domain/Repositories/getCategory_and_getBrand/get_all_brand_repo.dart';

class GetAllBandsImpl implements GetAllBrandRepo {
  final GetAllBrandRemoteDataSourceImpl getAllBrandRemoteDataSourceImpl;

  GetAllBandsImpl({required this.getAllBrandRemoteDataSourceImpl});
  @override
  Future<Either<Faliures, CategoryAndBrandResponseEntity>> getAllBrands()async {
    var either = await getAllBrandRemoteDataSourceImpl.getAllBrands();
    return either.fold((error) =>Left(error), (response) =>Right(response));
  }

}
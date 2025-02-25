import 'package:dartz/dartz.dart';
import 'package:ecomerce_app/core/errors/faliures.dart';
import 'package:ecomerce_app/data/data_source/remote_data_source/get_all_brand_remote_datasource_Impl.dart';
import 'package:ecomerce_app/domain/Entity/category_and_brand_response.dart';
import 'package:ecomerce_app/domain/Repositories/data_source/remote_data_source/get_brand_remote_datasource.dart';
import 'package:ecomerce_app/domain/Repositories/getCategory_and_getBrand/get_all_brand_repo.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: GetAllBrandRepo)
class GetAllBandsImpl implements GetAllBrandRepo {
  final GetAllBrandRemoteDatasource getAllBrandRemoteDataSource;

  GetAllBandsImpl({required this.getAllBrandRemoteDataSource});
  @override
  Future<Either<Faliures, CategoryAndBrandResponseEntity>> getAllBrands()async {
    var either = await getAllBrandRemoteDataSource.getAllBrands();
    return either.fold((error) =>Left(error), (response) =>Right(response));
  }

}
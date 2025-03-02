// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../../data/data_source/remote_data_source/auth_remote_data_source_impl.dart'
    as _i191;
import '../../data/data_source/remote_data_source/get_all_brand_remote_datasource_Impl.dart'
    as _i894;
import '../../data/data_source/remote_data_source/get_all_category_remote_datasource_impl.dart'
    as _i380;
import '../../data/Repositories/auth_repository_impl.dart' as _i670;
import '../../data/Repositories/get_all_bands_impl.dart' as _i682;
import '../../data/Repositories/getallgategory_impl.dart' as _i332;
import '../../domain/Repositories/auth/auth_repositories.dart' as _i496;
import '../../domain/Repositories/data_source/remote_data_source/auth_remote_datasource.dart'
    as _i428;
import '../../domain/Repositories/data_source/remote_data_source/get_brand_remote_datasource.dart'
    as _i971;
import '../../domain/Repositories/data_source/remote_data_source/get_gategory_remote_data_source.dart'
    as _i461;
import '../../domain/Repositories/get_product/get_product_repositories.dart'
    as _i723;
import '../../domain/Repositories/getCategory_and_getBrand/get_all_brand_repo.dart'
    as _i630;
import '../../domain/Repositories/getCategory_and_getBrand/get_all_category.dart'
    as _i429;
import '../../domain/use_case/get_brand_use_case.dart' as _i808;
import '../../domain/use_case/get_category_use_case.dart' as _i75;
import '../../domain/use_case/get_product_use_case.dart' as _i374;
import '../../domain/use_case/login_usecase.dart' as _i151;
import '../../domain/use_case/register_use_case.dart' as _i78;
import '../../Features/home_tap/cubits/cubit/category_cubit.dart' as _i299;
import '../../Features/login_page/views/cubit/login_cubit/login_cubit.dart'
    as _i433;
import '../../Features/register_page/views/cubit/register_cubit/register_cubit.dart'
    as _i456;
import '../api/api_manager.dart' as _i1047;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.singleton<_i1047.ApiManager>(() => _i1047.ApiManager());
    gh.factory<_i374.GetProductUseCase>(() => _i374.GetProductUseCase(
        getProductRepositories: gh<_i723.GetProductRepositories>()));
    gh.factory<_i971.GetAllBrandRemoteDatasource>(() =>
        _i894.GetAllBrandRemoteDataSourceImpl(
            apiManager: gh<_i1047.ApiManager>()));
    gh.factory<_i461.GetGategoryRemoteDataSource>(() =>
        _i380.GetAllCategoryRemoteDatasourceimpl(
            apiManager: gh<_i1047.ApiManager>()));
    gh.factory<_i428.AuthRemoteDatasource>(() =>
        _i191.AuthRemoteDataSourceImpl(apiManager: gh<_i1047.ApiManager>()));
    gh.factory<_i429.GetAllCategoryRepositories>(() => _i332.GetallgategoryImpl(
        getGategoryRemoteDataSource: gh<_i461.GetGategoryRemoteDataSource>()));
    gh.factory<_i496.AuthRepositories>(() => _i670.AuthRepositoryImpl(
        authRemoteDatasource: gh<_i428.AuthRemoteDatasource>()));
    gh.factory<_i630.GetAllBrandRepo>(() => _i682.GetAllBandsImpl(
        getAllBrandRemoteDataSource: gh<_i971.GetAllBrandRemoteDatasource>()));
    gh.factory<_i78.RegisterUseCase>(() =>
        _i78.RegisterUseCase(authRepositories: gh<_i496.AuthRepositories>()));
    gh.factory<_i151.LoginUsecase>(() =>
        _i151.LoginUsecase(authRepositories: gh<_i496.AuthRepositories>()));
    gh.factory<_i808.GetBrandUseCase>(() =>
        _i808.GetBrandUseCase(getAllBrandRepo: gh<_i630.GetAllBrandRepo>()));
    gh.factory<_i75.GetCategoryUseCase>(() => _i75.GetCategoryUseCase(
        getAllCategoryRepositories: gh<_i429.GetAllCategoryRepositories>()));
    gh.factory<_i433.LoginCubit>(
        () => _i433.LoginCubit(gh<_i151.LoginUsecase>()));
    gh.factory<_i456.RegisterCubit>(
        () => _i456.RegisterCubit(gh<_i78.RegisterUseCase>()));
    gh.factory<_i299.CategoryAndBrandCubit>(() => _i299.CategoryAndBrandCubit(
          gh<_i75.GetCategoryUseCase>(),
          gh<_i808.GetBrandUseCase>(),
        ));
    return this;
  }
}

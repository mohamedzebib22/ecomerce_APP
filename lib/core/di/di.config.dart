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
import '../../data/data_source/remote_data_source/crud_wish_list_remote_dm.dart'
    as _i595;
import '../../data/data_source/remote_data_source/get_all_brand_remote_datasource_Impl.dart'
    as _i894;
import '../../data/data_source/remote_data_source/get_all_category_remote_datasource_impl.dart'
    as _i380;
import '../../data/data_source/remote_data_source/get_product_remote_impl.dart'
    as _i1013;
import '../../data/Repositories/auth_repository_impl.dart' as _i670;
import '../../data/Repositories/crud_wish_list_dm.dart' as _i242;
import '../../data/Repositories/get_all_bands_impl.dart' as _i682;
import '../../data/Repositories/get_product_impl.dart' as _i991;
import '../../data/Repositories/getallgategory_impl.dart' as _i332;
import '../../domain/Repositories/auth/auth_repositories.dart' as _i496;
import '../../domain/Repositories/crud_product/get_product_repositories.dart'
    as _i367;
import '../../domain/Repositories/data_source/remote_data_source/auth_remote_datasource.dart'
    as _i428;
import '../../domain/Repositories/data_source/remote_data_source/crud_wish_list.dart'
    as _i119;
import '../../domain/Repositories/data_source/remote_data_source/get_brand_remote_datasource.dart'
    as _i971;
import '../../domain/Repositories/data_source/remote_data_source/get_gategory_remote_data_source.dart'
    as _i461;
import '../../domain/Repositories/data_source/remote_data_source/get_product_remote_data_source.dart'
    as _i793;
import '../../domain/Repositories/getCategory_and_getBrand/get_all_brand_repo.dart'
    as _i630;
import '../../domain/Repositories/getCategory_and_getBrand/get_all_category.dart'
    as _i429;
import '../../domain/Repositories/wishList/crud_wish_list_repositories.dart'
    as _i108;
import '../../domain/use_case/delete_cart_item_use_case.dart' as _i915;
import '../../domain/use_case/delete_item_wish_list.dart' as _i109;
import '../../domain/use_case/get_brand_use_case.dart' as _i808;
import '../../domain/use_case/get_cart_item_use_case.dart' as _i316;
import '../../domain/use_case/get_category_use_case.dart' as _i75;
import '../../domain/use_case/get_item_wish_list_use_case.dart' as _i1071;
import '../../domain/use_case/get_product_use_case.dart' as _i374;
import '../../domain/use_case/login_usecase.dart' as _i151;
import '../../domain/use_case/post_cart_use_case.dart' as _i269;
import '../../domain/use_case/post_wish_list_use_case.dart' as _i45;
import '../../domain/use_case/register_use_case.dart' as _i78;
import '../../domain/use_case/updete_count_item_use_case.dart' as _i365;
import '../../Features/cart_page/cubit/get_cart_product_cubit/get_cart_product_cubit.dart'
    as _i529;
import '../../Features/favourite_tap/cubit/wish_list_cubit.dart' as _i504;
import '../../Features/home_tap/cubits/cubit/category_cubit.dart' as _i299;
import '../../Features/login_page/views/cubit/login_cubit/login_cubit.dart'
    as _i433;
import '../../Features/product_tap/cubit/get_product_cubit.dart' as _i867;
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
    gh.factory<_i119.CrudWishListRemoteEntity>(() =>
        _i595.CrudWishListRemoteImpl(apiManager: gh<_i1047.ApiManager>()));
    gh.factory<_i108.CrudWishListRepositories>(() => _i242.CrudWishListImpl(
        crudWishListRemoteEntity: gh<_i119.CrudWishListRemoteEntity>()));
    gh.factory<_i971.GetAllBrandRemoteDatasource>(() =>
        _i894.GetAllBrandRemoteDataSourceImpl(
            apiManager: gh<_i1047.ApiManager>()));
    gh.factory<_i461.GetGategoryRemoteDataSource>(() =>
        _i380.GetAllCategoryRemoteDatasourceimpl(
            apiManager: gh<_i1047.ApiManager>()));
    gh.factory<_i793.GetProductRemoteDataSource>(
        () => _i1013.GetProductRemoteImpl(apiManager: gh<_i1047.ApiManager>()));
    gh.factory<_i428.AuthRemoteDatasource>(() =>
        _i191.AuthRemoteDataSourceImpl(apiManager: gh<_i1047.ApiManager>()));
    gh.factory<_i109.DeleteItemWishList>(() => _i109.DeleteItemWishList(
        deleteItemWishList: gh<_i108.CrudWishListRepositories>()));
    gh.factory<_i429.GetAllCategoryRepositories>(() => _i332.GetallgategoryImpl(
        getGategoryRemoteDataSource: gh<_i461.GetGategoryRemoteDataSource>()));
    gh.factory<_i496.AuthRepositories>(() => _i670.AuthRepositoryImpl(
        authRemoteDatasource: gh<_i428.AuthRemoteDatasource>()));
    gh.factory<_i630.GetAllBrandRepo>(() => _i682.GetAllBandsImpl(
        getAllBrandRemoteDataSource: gh<_i971.GetAllBrandRemoteDatasource>()));
    gh.factory<_i151.LoginUsecase>(() =>
        _i151.LoginUsecase(authRepositories: gh<_i496.AuthRepositories>()));
    gh.factory<_i78.RegisterUseCase>(() =>
        _i78.RegisterUseCase(authRepositories: gh<_i496.AuthRepositories>()));
    gh.factory<_i808.GetBrandUseCase>(() =>
        _i808.GetBrandUseCase(getAllBrandRepo: gh<_i630.GetAllBrandRepo>()));
    gh.factory<_i1071.GetItemWishListUseCase>(() =>
        _i1071.GetItemWishListUseCase(
            crudWishListRepositories: gh<_i108.CrudWishListRepositories>()));
    gh.factory<_i45.PostWishListUseCase>(() => _i45.PostWishListUseCase(
        crudWishListRepositories: gh<_i108.CrudWishListRepositories>()));
    gh.factory<_i75.GetCategoryUseCase>(() => _i75.GetCategoryUseCase(
        getAllCategoryRepositories: gh<_i429.GetAllCategoryRepositories>()));
    gh.factory<_i367.GetProductRepositories>(() => _i991.GetProductImpl(
        getProductRemoteDataSource: gh<_i793.GetProductRemoteDataSource>()));
    gh.factory<_i433.LoginCubit>(
        () => _i433.LoginCubit(gh<_i151.LoginUsecase>()));
    gh.factory<_i456.RegisterCubit>(
        () => _i456.RegisterCubit(gh<_i78.RegisterUseCase>()));
    gh.factory<_i915.DeleteCartItemUseCase>(() => _i915.DeleteCartItemUseCase(
        getProductRepositories: gh<_i367.GetProductRepositories>()));
    gh.factory<_i316.GetCartItemUseCase>(() => _i316.GetCartItemUseCase(
        getProductRepositories: gh<_i367.GetProductRepositories>()));
    gh.factory<_i374.GetProductUseCase>(() => _i374.GetProductUseCase(
        getProductRepositories: gh<_i367.GetProductRepositories>()));
    gh.factory<_i269.PostCartUseCase>(() => _i269.PostCartUseCase(
        getProductRepositories: gh<_i367.GetProductRepositories>()));
    gh.factory<_i365.UpdeteCountItemUseCase>(() => _i365.UpdeteCountItemUseCase(
        getProductRepositories: gh<_i367.GetProductRepositories>()));
    gh.factory<_i504.WishListCubit>(() => _i504.WishListCubit(
          gh<_i1071.GetItemWishListUseCase>(),
          gh<_i45.PostWishListUseCase>(),
          gh<_i109.DeleteItemWishList>(),
        ));
    gh.factory<_i299.CategoryAndBrandCubit>(() => _i299.CategoryAndBrandCubit(
          gh<_i75.GetCategoryUseCase>(),
          gh<_i808.GetBrandUseCase>(),
        ));
    gh.factory<_i867.GetProductCubit>(() => _i867.GetProductCubit(
          gh<_i374.GetProductUseCase>(),
          gh<_i269.PostCartUseCase>(),
        ));
    gh.factory<_i529.GetCartProductCubit>(() => _i529.GetCartProductCubit(
          gh<_i316.GetCartItemUseCase>(),
          gh<_i915.DeleteCartItemUseCase>(),
          gh<_i365.UpdeteCountItemUseCase>(),
        ));
    return this;
  }
}

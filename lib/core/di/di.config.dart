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
import '../../data/Repositories/auth_repository_impl.dart' as _i670;
import '../../domain/Repositories/auth/auth_repositories.dart' as _i496;
import '../../domain/Repositories/remote_data_source/auth_remote_datasource.dart'
    as _i449;
import '../../domain/use_case/login_usecase.dart' as _i151;
import '../../domain/use_case/register_use_case.dart' as _i78;
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
    gh.factory<_i449.AuthRemoteDatasource>(() =>
        _i191.AuthRemoteDataSourceImpl(apiManager: gh<_i1047.ApiManager>()));
    gh.factory<_i496.AuthRepositories>(() => _i670.AuthRepositoryImpl(
        authRemoteDatasource: gh<_i449.AuthRemoteDatasource>()));
    gh.factory<_i78.RegisterUseCase>(() =>
        _i78.RegisterUseCase(authRepositories: gh<_i496.AuthRepositories>()));
    gh.factory<_i151.LoginUsecase>(() =>
        _i151.LoginUsecase(authRepositories: gh<_i496.AuthRepositories>()));
    gh.factory<_i433.LoginCubit>(
        () => _i433.LoginCubit(gh<_i151.LoginUsecase>()));
    gh.factory<_i456.RegisterCubit>(
        () => _i456.RegisterCubit(gh<_i78.RegisterUseCase>()));
    return this;
  }
}

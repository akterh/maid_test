// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i4;
import 'package:testApp/core/app/app_dependency.dart' as _i15;
import 'package:testApp/core/app/app_preference.dart' as _i3;
import 'package:testApp/data/network/api_client.dart' as _i8;
import 'package:testApp/features/screens/home/cubit/user_cubit.dart' as _i13;
import 'package:testApp/features/screens/home/repository/user_repository.dart'
    as _i10;
import 'package:testApp/features/screens/home/repository/user_repository_impl.dart'
    as _i9;
import 'package:testApp/features/screens/login/cubit/login_cubit.dart' as _i14;
import 'package:testApp/features/screens/login/repository/login_repo.dart'
    as _i12;
import 'package:testApp/features/screens/login/repository/login_repo_imp.dart'
    as _i11;
import 'package:testApp/features/screens/no_internet/cubit/internet_cubit.dart'
    as _i7;
import 'package:testApp/features/screens/theme/cubit/theme_cubit.dart' as _i6;

// initializes the registration of main-scope dependencies inside of GetIt
Future<_i1.GetIt> $initGetIt(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final appModule = _$AppModule();
  gh.factory<_i3.AppPreferences>(() => _i3.AppPreferences());
  await gh.factoryAsync<_i4.SharedPreferences>(
    () => appModule.prefs,
    preResolve: true,
  );
  gh.factory<_i5.Dio>(() => appModule.dio);
  gh.factory<_i6.ThemeCubit>(() => _i6.ThemeCubit());
  gh.factory<_i7.InternetCubit>(() => _i7.InternetCubit());
  gh.factory<_i8.ApiClient>(() => _i8.ApiClient(gh<_i5.Dio>()));
  gh.factory<_i9.UsersRepositoryImp>(
      () => _i10.UsersRepository(gh<_i8.ApiClient>()));
  gh.factory<_i11.LoginRepositoryImp>(
      () => _i12.LoginRepository(apiClient: gh<_i8.ApiClient>()));
  gh.factory<_i13.UserCubit>(
      () => _i13.UserCubit(gh<_i9.UsersRepositoryImp>()));
  gh.factory<_i14.LoginCubit>(
      () => _i14.LoginCubit(gh<_i11.LoginRepositoryImp>()));
  return getIt;
}

class _$AppModule extends _i15.AppModule {}

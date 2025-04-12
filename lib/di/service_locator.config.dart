// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:crypto_app/data/repositories/coins_repository_impl.dart'
    as _i412;
import 'package:crypto_app/data/repositories/theme_repository_impl.dart'
    as _i963;
import 'package:crypto_app/data/sources/crypto_api_source.dart' as _i238;
import 'package:crypto_app/data/sources/shared_preferences_source.dart'
    as _i451;
import 'package:crypto_app/di/modules/crypto_source_module.dart' as _i200;
import 'package:crypto_app/di/modules/shared_preferences_module.dart' as _i15;
import 'package:crypto_app/di/modules/theme_cubit_module.dart' as _i82;
import 'package:crypto_app/domain/interface/coins_repository.dart' as _i682;
import 'package:crypto_app/domain/interface/theme_repository.dart' as _i168;
import 'package:crypto_app/features/home/cubit/home_cubit.dart' as _i63;
import 'package:crypto_app/features/profile/cubit/theme_cubit.dart' as _i193;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:shared_preferences/shared_preferences.dart' as _i460;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final sharedPreferencesModule = _$SharedPreferencesModule();
    final cryptoSourceModule = _$CryptoSourceModule();
    final themeCubitModule = _$ThemeCubitModule();
    await gh.lazySingletonAsync<_i460.SharedPreferences>(
      () => sharedPreferencesModule.prefs,
      preResolve: true,
    );
    gh.lazySingleton<_i238.CryptoApiSource>(
        () => cryptoSourceModule.cryptoApiSource);
    gh.factory<_i682.CoinsRepository>(
        () => _i412.CoinsRepositoryImpl(gh<_i238.CryptoApiSource>()));
    gh.lazySingleton<_i451.SharedPreferencesSource>(() =>
        _i451.SharedPreferencesSource(prefs: gh<_i460.SharedPreferences>()));
    gh.factory<_i63.HomeCubit>(
        () => _i63.HomeCubit(gh<_i682.CoinsRepository>()));
    gh.factory<_i168.ThemeRepository>(() =>
        _i963.ThemeRepositoryImpl(source: gh<_i451.SharedPreferencesSource>()));
    await gh.factoryAsync<_i193.ThemeCubit>(
      () => themeCubitModule.cubit(gh<_i168.ThemeRepository>()),
      preResolve: true,
    );
    return this;
  }
}

class _$SharedPreferencesModule extends _i15.SharedPreferencesModule {}

class _$CryptoSourceModule extends _i200.CryptoSourceModule {}

class _$ThemeCubitModule extends _i82.ThemeCubitModule {}

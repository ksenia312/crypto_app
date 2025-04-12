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
import 'package:crypto_app/data/sources/crypto_api_source.dart' as _i238;
import 'package:crypto_app/di/modules/crypto_source_module.dart' as _i200;
import 'package:crypto_app/domain/interface/coins_repository.dart' as _i682;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

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
    final cryptoSourceModule = _$CryptoSourceModule();
    gh.lazySingleton<_i238.CryptoApiSource>(
        () => cryptoSourceModule.cryptoApiSource);
    gh.factory<_i682.CoinsRepository>(
        () => _i412.CoinsRepositoryImpl(gh<_i238.CryptoApiSource>()));
    return this;
  }
}

class _$CryptoSourceModule extends _i200.CryptoSourceModule {}

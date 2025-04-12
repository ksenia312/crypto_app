import 'package:crypto_app/app/network/network_data.dart';
import 'package:crypto_app/data/sources/crypto_api_source.dart';
import 'package:injectable/injectable.dart';

@module
abstract class CryptoSourceModule {
  @lazySingleton
  CryptoApiSource get cryptoApiSource {
    return CryptoApiSource(
      auth: NetworkData.cryptoAuth,
      url: NetworkData.cryptoBaseUrl,
    );
  }
}

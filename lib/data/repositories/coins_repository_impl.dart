import 'dart:convert';

import 'package:crypto_app/data/sources/crypto_api_source.dart';
import 'package:crypto_app/data/sources/model/currency.dart';
import 'package:crypto_app/data/sources/model/order.dart';
import 'package:crypto_app/domain/interface/coins_repository.dart';
import 'package:crypto_app/domain/model/app_exception.dart';
import 'package:crypto_app/domain/model/coin_entity.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: CoinsRepository)
class CoinsRepositoryImpl extends CoinsRepository {
  CoinsRepositoryImpl(this.api);

  static const _defaultCurrency = Currency.usd;
  static const _defaultOrder = FetchOrder.marketCapDesc;
  static const _defaultPage = 1;
  static const _defaultSize = 10;
  static const _defaultSparkline = false;

  final CryptoApiSource api;

  @override
  Future<List<CoinEntity>> fetchTopCryptocurrencies() async {
    try {
      final response = await api.fetchList(
        page: _defaultPage,
        size: _defaultSize,
        currency: _defaultCurrency,
        order: _defaultOrder,
        sparkline: _defaultSparkline,
      );
      if (response.statusCode == 200) {
        return [
          ...(jsonDecode(response.body) as List).map(
            (e) => CoinEntity.fromJson(e as Map<String, dynamic>),
          ),
        ];
      } else if (response.statusCode == 429) {
        throw AppException.cryptoListTooManyRequests();
      } else {
        throw AppException.cryptoListFetchError();
      }
    } catch (e) {
      throw AppException.cryptoListFetchError();
    }
  }

}

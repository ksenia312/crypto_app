import 'dart:convert';

import 'package:crypto_app/data/sources/crypto_api_source.dart';
import 'package:crypto_app/domain/model/app_exception.dart';
import 'package:crypto_app/domain/model/coin_entity.dart';
import 'package:crypto_app/domain/interface/coins_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: CoinsRepository)
class CoinsRepositoryImpl extends CoinsRepository {
  CoinsRepositoryImpl(this.api);

  final CryptoApiSource api;

  @override
  Future<List<CoinEntity>> fetchTopCryptocurrencies() async {
    try {
      final response = await api.fetchList();
      if (response.statusCode == 200) {
        return [
          ...(jsonEncode(response.body) as List).map((e) => CoinEntity.fromJson(e)),
        ];
      }
      throw AppException.cryptoListFetchError();
    } catch (e) {
      throw AppException.cryptoListFetchError();
    }
  }
}

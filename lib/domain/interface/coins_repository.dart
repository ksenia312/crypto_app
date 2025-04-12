import 'package:crypto_app/data/sources/model/currency.dart';
import 'package:crypto_app/data/sources/model/order.dart';
import 'package:crypto_app/domain/model/coin_entity.dart';

abstract class CoinsRepository {
  Future<List<CoinEntity>> fetchTopCryptocurrencies();

  Future<List<CoinEntity>> fetchList({
    int page,
    int size,
    Currency currency,
    FetchOrder order,
    bool sparkline,
  });
}

import 'package:crypto_app/domain/model/coin_entity.dart';

abstract class CoinsRepository {
  Future<List<CoinEntity>> fetchTopCryptocurrencies();
}

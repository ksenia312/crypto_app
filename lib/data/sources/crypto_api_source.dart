import 'package:crypto_app/data/sources/model/coins_list_request_query.dart';
import 'package:crypto_app/data/sources/model/currency.dart';
import 'package:crypto_app/data/sources/model/order.dart';
import 'package:http/http.dart' as http;

class CryptoApiSource {
  const CryptoApiSource({required this.url, required this.auth});

  final String url;
  final Map<String, String> auth;

  Future<http.Response> fetchList({
    required int page,
    required int size,
    required Currency currency,
    required FetchOrder order,
    required bool sparkline,
  }) {
    final body = CoinsListRequestQuery(
      currency: currency,
      order: order,
      page: page,
      size: size,
      sparkline: sparkline,
    );
    return http.get(
      Uri.https(url, 'api/v3/coins/markets', body.toParams()),
      headers: auth,
    );
  }
}

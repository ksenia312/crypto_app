import 'package:crypto_app/app/network/request_query.dart';
import 'package:crypto_app/data/sources/model/currency.dart';
import 'package:crypto_app/data/sources/model/order.dart';

class CoinsListRequestQuery extends AppRequestQuery {
  const CoinsListRequestQuery({
    required this.page,
    required this.size,
    required this.currency,
    required this.order,
    required this.sparkline,
  });

  final int page;
  final int size;
  final Currency currency;
  final FetchOrder order;
  final bool sparkline;

  @override
  Map<String, String> toParams() {
    return {
      'page': '$page',
      'per_page': '$size',
      'vs_currency': currency.apiValue,
      'order': order.apiValue,
      'sparkline': '$sparkline',
    };
  }
}

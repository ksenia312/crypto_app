import 'package:crypto_app/domain/model/app_exception.dart';

abstract class ErrorTextGenerator {
  static String generate(AppException exception) {
    return switch (exception) {
      CryptoListFetchError _ => 'Failed to fetch cryptocurrencies list',
      UnknownError _ => 'Unknown error',
    };
  }
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_exception.freezed.dart';

@freezed
sealed class AppException with _$AppException {
  const factory AppException.cryptoListFetchError() = CryptoListFetchError;

  const factory AppException.cryptoListTooManyRequests() = CryptoListTooManyRequests;

  const factory AppException.unknown() = UnknownError;
}

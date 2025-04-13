// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'coin_entity.freezed.dart';
part 'coin_entity.g.dart';

@Freezed(toJson: false, fromJson: true)
class CoinEntity with _$CoinEntity {
  const factory CoinEntity({
    required String id,
    required String? name,
    required String? image,
    required String? symbol,
    @JsonKey(name: 'current_price') required double? currentPrice,
    @JsonKey(name: 'price_change_percentage_24h') required double? priceChangePercentage24h,
  }) = _CoinEntity;

  factory CoinEntity.fromJson(Map<String, dynamic> json) => _$CoinEntityFromJson(json);
}

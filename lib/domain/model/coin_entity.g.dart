// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coin_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CoinEntityImpl _$$CoinEntityImplFromJson(Map<String, dynamic> json) =>
    _$CoinEntityImpl(
      id: json['id'] as String,
      name: json['name'] as String?,
      image: json['image'] as String?,
      symbol: json['symbol'] as String?,
      currentPrice: (json['current_price'] as num?)?.toDouble(),
      priceChangePercentage24h:
          (json['price_change_percentage_24h'] as num?)?.toDouble(),
    );

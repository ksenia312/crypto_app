import 'package:crypto_app/domain/model/coin_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

@freezed
class HomeAppState with _$HomeAppState {
  const factory HomeAppState({
    required List<CoinEntity> coins,
  }) = _HomeAppState;
}

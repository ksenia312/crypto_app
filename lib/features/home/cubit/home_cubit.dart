import 'package:crypto_app/domain/interface/coins_repository.dart';
import 'package:crypto_app/domain/model/app_exception.dart';
import 'package:crypto_app/domain/model/coin_entity.dart';
import 'package:crypto_app/shared/state/app_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import 'home_state.dart';

@Injectable()
class HomeCubit extends Cubit<AsyncState<HomeAppState>> {
  HomeCubit(this.cryptoRepository) : super(const AsyncState.loading());

  final CoinsRepository cryptoRepository;

  Future<void> refresh() => _fetch();

  void filter(String query) {
    if (state is! DataState) return;

    final coins = (state as DataState<HomeAppState>).data.coins;
    if (query.isEmpty) {
      _resetSearch();
    } else {
      emit(
        AsyncState.data(
          HomeAppState(
            coins: coins,
            filteredCoins: _filterBy(query, coins),
            lastQuery: query,
          ),
        ),
      );
    }
  }

  void _resetSearch() {
    if (state is! DataState) return;
    final coins = (state as DataState<HomeAppState>).data.coins;
    emit(
      AsyncState.data(
        HomeAppState(
          coins: coins,
          filteredCoins: coins,
          lastQuery: null,
        ),
      ),
    );
  }

  Future<void> _fetch() async {
    final lastQuery = state is DataState ? (state as DataState).data.lastQuery : null;
    try {
      emit(AsyncState.loading());

      final coins = await cryptoRepository.fetchTopCryptocurrencies();
      final filteredCoins = lastQuery != null ? _filterBy(lastQuery, coins) : coins;

      emit(
        AsyncState.data(
          HomeAppState(
            coins: coins,
            filteredCoins: filteredCoins,
            lastQuery: lastQuery,
          ),
        ),
      );
    } on AppException catch (e) {
      emit(AsyncState.error(e));
    } catch (e) {
      emit(const AsyncState.error(AppException.unknown()));
    }
  }

  List<CoinEntity> _filterBy(String query, List<CoinEntity> coins) {
    return [
      ...coins.where(
        (e) {
          final name = e.name?.toLowerCase();
          final symbol = e.symbol?.toLowerCase();
          final queryLowerCase = query.toLowerCase();
          return (name?.contains(queryLowerCase) ?? false) || (symbol?.contains(queryLowerCase) ?? false);
        },
      ),
    ];
  }
}

import 'package:crypto_app/domain/interface/coins_repository.dart';
import 'package:crypto_app/domain/model/app_exception.dart';
import 'package:crypto_app/shared/state/app_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import 'home_state.dart';

@Injectable()
class HomeCubit extends Cubit<AsyncState<HomeAppState>> {
  HomeCubit(this.cryptoRepository) : super(const AsyncState.loading());

  final CoinsRepository cryptoRepository;

  Future<void> init() async {
    try {
      emit(AsyncState.loading());
      final coins = await cryptoRepository.fetchTopCryptocurrencies();
      emit(AsyncState.data(HomeAppState(coins: coins)));
    } on AppException catch (e) {
      emit(AsyncState.error(e));
    } catch (e) {
      emit(const AsyncState.error(AppException.unknown()));
    }
  }
}

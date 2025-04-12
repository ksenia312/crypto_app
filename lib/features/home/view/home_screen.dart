import 'package:crypto_app/features/home/cubit/home_cubit.dart';
import 'package:crypto_app/features/home/cubit/home_state.dart';
import 'package:crypto_app/shared/components/coin_list_tile.dart';
import 'package:crypto_app/shared/state/app_state.dart';
import 'package:crypto_app/shared/ui/errors/error_text_generator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeCubit>(
      create: (_) => GetIt.instance()..init(),
      child: Scaffold(
        appBar: AppBar(),
        body: BlocBuilder<HomeCubit, AsyncState<HomeAppState>>(
          builder: (context, state) {
            return state.when(
              loading: (_) => Center(child: CircularProgressIndicator.adaptive()),
              error: (e, _) => Center(child: Text(ErrorTextGenerator.generate(e))),
              data: (data) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 12.0),
                child: ListView.separated(
                  shrinkWrap: true,
                  itemCount: data.coins.length,
                  separatorBuilder: (context, index) => SizedBox(height: 12),
                  itemBuilder: (context, index) {
                    return CoinListTile(coin: data.coins[index]);
                  },
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

import 'package:crypto_app/features/home/cubit/home_state.dart';
import 'package:crypto_app/shared/components/coin_list_tile.dart';
import 'package:flutter/material.dart';

class HomeSuccessView extends StatelessWidget {
  const HomeSuccessView({super.key, required this.data});

  final HomeAppState data;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 12.0),
      itemCount: data.coins.length,
      separatorBuilder: (context, index) => SizedBox(height: 12),
      itemBuilder: (context, index) {
        return CoinListTile(coin: data.coins[index]);
      },
    );
  }
}

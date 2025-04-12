import 'package:crypto_app/features/home/cubit/home_state.dart';
import 'package:crypto_app/shared/components/coin_list_tile.dart';
import 'package:crypto_app/shared/localization/strings.dart';
import 'package:flutter/material.dart';

class HomeSuccessView extends StatelessWidget {
  const HomeSuccessView({super.key, required this.data});

  static const _indent = 12.0;
  static const _largeIndent = 16.0;

  final HomeAppState data;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(
        horizontal: _indent,
        vertical: _largeIndent,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        spacing: _indent,
        children: [
          Text(
            Strings.value('Top cryptocurrencies'),
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.start,
          ),
          ...data.coins.map(
            (e) => CoinListTile(
              coin: e,
            ),
          ),
        ],
      ),
    );
  }
}

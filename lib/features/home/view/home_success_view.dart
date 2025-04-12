import 'package:crypto_app/features/home/cubit/home_state.dart';
import 'package:crypto_app/shared/localization/strings.dart';
import 'package:crypto_app/shared/ui/components/coin_list_tile.dart';
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
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
            textAlign: TextAlign.start,
          ),
          if (data.filteredCoins.isNotEmpty)
            ...data.filteredCoins.map(
              (e) => CoinListTile(coin: e),
            )
          else
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 32),
                child: Text('Nothing found'),
              ),
            ),
        ],
      ),
    );
  }
}

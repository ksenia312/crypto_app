import 'package:crypto_app/domain/model/coin_entity.dart';
import 'package:crypto_app/shared/components/coin_image.dart';
import 'package:crypto_app/shared/components/coin_trailing.dart';
import 'package:crypto_app/shared/localization/strings.dart';
import 'package:flutter/material.dart';

class CoinListTile extends StatelessWidget {
  const CoinListTile({super.key, required this.coin});

  final CoinEntity coin;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CoinImage(url: coin.image),
      title: Text(coin.name ?? Strings.value('Unknown name')),
      subtitle: Text(coin.symbol?.toUpperCase() ?? Strings.value('???')),
      trailing: LayoutBuilder(builder: (context, constraints) {
        return ConstrainedBox(
          constraints: BoxConstraints(maxWidth: constraints.biggest.width / 3),
          child: CoinTrailing(
            coinEntity: coin,
          ),
        );
      }),
    );
  }
}

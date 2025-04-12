import 'package:crypto_app/domain/model/coin_entity.dart';
import 'package:crypto_app/shared/extensions/double_extensions.dart';
import 'package:crypto_app/shared/gen/assets.gen.dart';
import 'package:crypto_app/shared/localization/strings.dart';
import 'package:crypto_app/shared/ui/theme/colors.dart';
import 'package:flutter/material.dart';

class CoinTrailing extends StatelessWidget {
  const CoinTrailing({super.key, required this.coinEntity});

  final CoinEntity coinEntity;

  @override
  Widget build(BuildContext context) {
    final price = coinEntity.currentPrice?.toStringAsFixedIfNeeded(maxDigits: 4);
    final style = Theme.of(context).textTheme.bodyLarge?.copyWith(
          fontWeight: FontWeight.w800,
          color: Theme.of(context).colorScheme.onPrimary,
        );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(child: Text(price != null ? '\$$price' : Strings.value('-'), style: style)),
        Flexible(child: CoinLast24HoursPercentage(percentage: coinEntity.priceChangePercentage24h)),
      ],
    );
  }
}

class CoinLast24HoursPercentage extends StatelessWidget {
  const CoinLast24HoursPercentage({super.key, this.percentage});

  final double? percentage;

  @override
  Widget build(BuildContext context) {
    final value = percentage;
    final stringValue = value?.toStringAsFixedIfNeeded(maxDigits: 3);
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (value == null) SizedBox.shrink() else if (value > 0) Assets.arrowUp.svg() else Assets.arrowDown.svg(),
        Flexible(
          child: Text(
            stringValue != null ? '$stringValue%' : Strings.value('-'),
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: value == null
                      ? Theme.of(context).colorScheme.onSurface
                      : value >= 0
                          ? AppColors.green
                          : AppColors.red,
                ),
          ),
        )
      ],
    );
  }
}

import 'package:crypto_app/shared/extensions/double_extensions.dart';
import 'package:crypto_app/shared/localization/strings.dart';
import 'package:flutter/material.dart';

class CoinPrice extends StatelessWidget {
  const CoinPrice({
    super.key,
    required this.currentPrice,
    this.fontSize = 16,
  });

  final double? currentPrice;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    final price = currentPrice?.toStringAsFixedIfNeeded(maxDigits: 4);
    final style = Theme.of(context).textTheme.bodyLarge?.copyWith(
          fontSize: fontSize,
          fontWeight: FontWeight.w800,
          color: Theme.of(context).colorScheme.onPrimary,
        );

    return Text(price != null ? '\$$price' : Strings.value('-'), style: style);
  }
}

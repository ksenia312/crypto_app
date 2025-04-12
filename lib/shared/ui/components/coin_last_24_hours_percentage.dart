import 'package:crypto_app/shared/extensions/double_extensions.dart';
import 'package:crypto_app/shared/gen/assets.gen.dart';
import 'package:crypto_app/shared/localization/strings.dart';
import 'package:crypto_app/shared/ui/theme/colors.dart';
import 'package:flutter/material.dart';

class CoinLast24HoursPercentage extends StatelessWidget {
  const CoinLast24HoursPercentage({
    super.key,
    this.percentage,
    this.percentFontSize = 12,
    this.captionFontSize = 8,
  });

  final double? percentage;
  final double percentFontSize;
  final double captionFontSize;

  @override
  Widget build(BuildContext context) {
    final value = percentage;
    final stringValue = value?.toStringAsFixedIfNeeded(maxDigits: 3);
    final bodySmall = Theme.of(context).textTheme.bodySmall;
    final colorScheme = Theme.of(context).colorScheme;
    final accentColor = value == null
        ? colorScheme.onPrimary
        : value >= 0
            ? AppColors.green
            : AppColors.red;
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (value == null) SizedBox.shrink() else if (value > 0) Assets.arrowUp.svg() else Assets.arrowDown.svg(),
        Flexible(
          child: RichText(
            text: TextSpan(
              text: stringValue != null ? '$stringValue%' : Strings.value('-'),
              style: bodySmall?.copyWith(
                fontSize: percentFontSize,
                color: accentColor,
              ),
              children: [
                TextSpan(
                  text: Strings.value(' 24h'),
                  style: bodySmall?.copyWith(
                    fontSize: captionFontSize,
                    color: colorScheme.onPrimary,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

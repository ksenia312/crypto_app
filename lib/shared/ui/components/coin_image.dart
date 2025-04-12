import 'package:flutter/material.dart';

class CoinImage extends StatelessWidget {
  const CoinImage({super.key, required this.url});

  final String? url;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(100.0),
      child: SizedBox.square(
        dimension: 44,
        child: url != null
            ? Center(child: Image.network(url!, fit: BoxFit.contain))
            : DecoratedBox(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondary,
                  shape: BoxShape.circle,
                ),
              ),
      ),
    );
  }
}

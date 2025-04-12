import 'package:crypto_app/shared/gen/assets.gen.dart';
import 'package:crypto_app/shared/localization/strings.dart';
import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CircleAvatar(
          radius: 50,
          child: Assets.profileFilled.svg(
            height: 40,
            width: 40,
          ),
        ),
        SizedBox(width: 8),
        Expanded(
          child: Center(
            child: Text(
              Strings.value('Anonymous'),
              style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
            ),
          ),
        ),
      ],
    );
  }
}

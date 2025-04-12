import 'package:crypto_app/features/profile/cubit/theme_cubit.dart';
import 'package:crypto_app/features/profile/cubit/theme_state.dart';
import 'package:crypto_app/features/profile/view/widgets/profile_header.dart';
import 'package:crypto_app/shared/gen/assets.gen.dart';
import 'package:crypto_app/shared/localization/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 24),
              ProfileHeader(),
              const SizedBox(height: 32),
              BlocBuilder<ThemeCubit, ThemeState>(builder: (context, state) {
                final isDark = state.map(
                  light: (_) => false,
                  dark: (_) => true,
                  notSet: (_) => Theme.of(context).brightness == Brightness.dark,
                );
                return ListTile(
                  title: Text(Strings.value('Theme')),
                  trailing: ColorFiltered(
                    colorFilter: ColorFilter.mode(
                      Theme.of(context).colorScheme.onPrimary,
                      BlendMode.srcATop,
                    ),
                    child: isDark ? Assets.nightMode.svg() : Assets.lightMode.svg(),
                  ),
                  onTap: () {
                    context.read<ThemeCubit>().setDark(isDark: !isDark);
                  },
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:crypto_app/app/main_wrapper.dart';
import 'package:crypto_app/features/profile/cubit/theme_cubit.dart';
import 'package:crypto_app/features/profile/cubit/theme_state.dart';
import 'package:crypto_app/shared/ui/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ThemeCubit>(
      create: (_) => GetIt.instance(),
      child: BlocBuilder<ThemeCubit, ThemeState>(builder: (context, state) {
        return MaterialApp(
          title: 'Cryptocurrency App',
          darkTheme: AppTheme.dark,
          theme: AppTheme.light,
          themeMode: state.map(
            light: (_) => ThemeMode.light,
            dark: (_) => ThemeMode.dark,
            notSet: (_) => ThemeMode.system,
          ),
          home: MainWrapper(),
        );
      }),
    );
  }
}

import 'package:crypto_app/domain/interface/theme_repository.dart';
import 'package:crypto_app/features/profile/cubit/theme_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit(this.repository) : super(ThemeState.notSet());

  final ThemeRepository repository;

  Future<void> init() async {
    final isDark = await repository.isDarkTheme();
    emit(isDark == null
        ? ThemeState.notSet()
        : isDark
            ? ThemeState.dark()
            : ThemeState.light());
  }

  Future<void> setDark({required bool isDark}) async {
    await repository.setDarkTheme(isDark);
    emit(isDark ? ThemeState.dark() : ThemeState.light());
  }
}

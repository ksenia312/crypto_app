import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@LazySingleton()
class SharedPreferencesSource {
  const SharedPreferencesSource({required this.prefs});

  static const _darkThemeKey = 'IS_DARK_THEME';

  final SharedPreferences prefs;

  Future<void> setDarkTheme(bool dark) {
    return prefs.setBool(_darkThemeKey, dark);
  }

  Future<bool?> isDarkTheme() async {
    return prefs.getBool(_darkThemeKey);
  }
}

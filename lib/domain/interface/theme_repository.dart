abstract class ThemeRepository {
  Future<bool?> isDarkTheme();

  Future<void> setDarkTheme(bool value);
}

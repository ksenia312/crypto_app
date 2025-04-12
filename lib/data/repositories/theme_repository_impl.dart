import 'package:crypto_app/data/sources/shared_preferences_source.dart';
import 'package:crypto_app/domain/interface/theme_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: ThemeRepository)
class ThemeRepositoryImpl extends ThemeRepository {
  ThemeRepositoryImpl({required this.source});

  final SharedPreferencesSource source;

  @override
  Future<bool?> isDarkTheme() {
    return source.isDarkTheme();
  }

  @override
  Future<void> setDarkTheme(bool value) {
    return source.setDarkTheme(value);
  }
}

import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@module
abstract class SharedPreferencesModule {
  @lazySingleton
  @preResolve
  Future<SharedPreferences> get prefs {
    return SharedPreferences.getInstance();
  }
}

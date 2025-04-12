import 'package:crypto_app/domain/interface/theme_repository.dart';
import 'package:crypto_app/features/profile/cubit/theme_cubit.dart';
import 'package:injectable/injectable.dart';

@module
abstract class ThemeCubitModule {
  @preResolve
  Future<ThemeCubit> cubit(ThemeRepository repository) async {
    final cubit = ThemeCubit(repository);
    await cubit.init();
    return cubit;
  }
}

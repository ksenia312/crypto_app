import 'package:crypto_app/features/profile/cubit/theme_cubit.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'service_locator.config.dart';

final getIt = GetIt.instance;

@InjectableInit()
Future<void> configureDependencies() async {
  await getIt.init();
  await GetIt.instance<ThemeCubit>().init();
}

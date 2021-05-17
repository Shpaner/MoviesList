import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:movies_list_app/repositories/authentication_repository.dart';
import 'package:movies_list_app/repositories/library_repository.dart';

import 'injection.config.dart';

final getIt = GetIt.instance;

@injectableInit
void configureDependencies() => $initGetIt(getIt);

Future<void> setupGetIt() async {
  if (GetIt.I.isRegistered<AuthenticationRepository>() &&
      GetIt.I.isRegistered<LibraryRepository>()) {
    await getIt.reset();
  }

  if (!GetIt.I.isRegistered<AuthenticationRepository>()) {
    getIt.registerSingleton<AuthenticationRepository>(
        AuthenticationRepository());
  }

  if (!GetIt.I.isRegistered<LibraryRepository>()) {
    getIt.registerSingleton<LibraryRepository>(LibraryRepository());
  }
}

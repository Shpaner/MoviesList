import 'package:bloc/bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:movies_list_app/repositories/authentication_repository.dart';

import 'app/bloc_observer.dart';
import 'app/view/app.dart';
import 'injection/injection.dart';

void main() async {
  configureDependencies();
  Bloc.observer = AppBlocObserver();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await setupGetIt();
  runApp(App(
    authenticationRepository: getIt<AuthenticationRepository>(),
    key: Key(''),
  ));
}

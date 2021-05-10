import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:movies_list_app/repositories/authentication.dart';
import 'package:movies_list_app/screens/login_screen.dart';
import 'package:movies_list_app/screens/registration_screen.dart';
import 'package:movies_list_app/screens/welcome_screen.dart';

import 'config/injection/injection.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  configureDependencies();
  initAuthenticationListener();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen('', ''),
        LoginScreen.id: (context) => LoginScreen('', ''),
      },
    );
  }
}

void initAuthenticationListener() {
  AuthenticationRepository _authRepository = getIt.get();
  _authRepository.startAuthenticationListener();
}

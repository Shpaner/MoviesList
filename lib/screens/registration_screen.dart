import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movies_list_app/components/custom_button.dart';
import 'package:movies_list_app/config/injection/injection.dart';
import 'package:movies_list_app/cubits/sign_up/sign_up_cubit.dart';

import '../constants.dart';

class RegistrationScreen extends StatelessWidget {
  static const String id = 'RegistrationScreen';

  RegistrationScreen(this.email, this.password);
  late final String email;
  late final String password;

  final SignUpCubit _cubit = SignUpCubit(getIt.get());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 0.0, horizontal: 15.0),
              child: IconButton(
                icon: Icon(Icons.arrow_back_ios),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Flexible(
                    child: Hero(
                      tag: 'logo',
                      child: Container(
                        height: 200.0,
                        child: Image.asset('images/logo.png'),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 48.0,
                  ),
                  TextField(
                    keyboardType: TextInputType.emailAddress,
                    textAlign: TextAlign.center,
                    onChanged: (login) {
                      email = login;
                      print(email);
                    },
                    decoration: kTextFieldDecoration.copyWith(
                        hintText: "Enter your email",
                        errorText: 'invalid email'),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  TextField(
                    obscureText: true,
                    textAlign: TextAlign.center,
                    onChanged: (pass) => password = pass,
                    decoration: kTextFieldDecoration.copyWith(
                        hintText: "Enter your password",
                        //labelText: 'password',
                        errorText: 'invalid password (at least 6 signs)'),
                  ),
                  SizedBox(
                    height: 46.0,
                  ),
                  CustomButton(
                    color: Colors.lightGreen,
                    text: 'Sign Up',
                    onPressed: () {
                      _cubit.emailChange(email);
                      _cubit.signUp();
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

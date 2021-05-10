import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movies_list_app/components/custom_button.dart';
import 'package:movies_list_app/screens/login_screen.dart';
import 'package:movies_list_app/screens/registration_screen.dart';

class WelcomeScreen extends StatelessWidget {
  static const String id = 'WelcomeScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text(
              'My List',
              style: TextStyle(
                fontSize: 32.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Column(
              children: [
                CustomButton(
                  color: Colors.lightGreen,
                  text: 'Log in',
                  onPressed: () => Navigator.pushNamed(context, LoginScreen.id),
                ),
                CustomButton(
                  color: Colors.green,
                  text: 'Register',
                  onPressed: () =>
                      Navigator.pushNamed(context, RegistrationScreen.id),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

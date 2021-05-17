import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movies_list_app/components/custom_button.dart';
import 'package:movies_list_app/screens/login/view/login_screen.dart';
import 'package:movies_list_app/screens/registration/view/registration_screen.dart';

class WelcomeScreen extends StatelessWidget {
  static Page page() => MaterialPage<void>(child: WelcomeScreen());

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
                  content: Text('Log in'),
                  onPressed: () => Navigator.push(context, LoginPage.route()),
                ),
                CustomButton(
                  color: Colors.green,
                  content: Text('Register'),
                  onPressed: () =>
                      Navigator.push(context, RegistrationPage.route()),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

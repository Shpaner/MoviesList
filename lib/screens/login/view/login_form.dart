import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:movies_list_app/components/custom_button.dart';
import 'package:movies_list_app/injection/injection.dart';
import 'package:movies_list_app/screens/login/cubit/login_cubit.dart';
import 'package:movies_list_app/utils/toast_utils.dart';

import '../../../constants.dart';

class LoginForm extends StatelessWidget {
  final LoginCubit _cubit = LoginCubit(getIt.get());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<LoginCubit, LoginState>(
        bloc: _cubit,
        listener: (context, state) {
          if (state.status == FormzStatus.submissionFailure) {
            showErrorToast(context, "Authentication Failed!");
          } else if (state.status == FormzStatus.submissionSuccess) {
            Navigator.pop(context);
          }
        },
        builder: (context, state) {
          return SafeArea(
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 0.0, horizontal: 15.0),
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
                      // Flexible(
                      //   child: Hero(
                      //     tag: 'logo',
                      //     child: Container(
                      //       height: 200.0,
                      //       child: Image.asset('images/logo.png'),
                      //     ),
                      //   ),
                      // ),
                      SizedBox(
                        height: 48.0,
                      ),
                      TextField(
                        keyboardType: TextInputType.emailAddress,
                        textAlign: TextAlign.center,
                        onChanged: (email) => _cubit.emailChanged(email),
                        decoration: kTextFieldDecoration.copyWith(
                            hintText: "Enter your email",
                            errorText:
                                state.email.invalid ? 'invalid email' : null),
                      ),
                      SizedBox(
                        height: state.email.invalid ? 8.0 : 30.0,
                      ),
                      TextField(
                        obscureText: true,
                        textAlign: TextAlign.center,
                        onChanged: (password) =>
                            _cubit.passwordChanged(password),
                        decoration: kTextFieldDecoration.copyWith(
                            hintText: "Enter your password",
                            //labelText: 'password',
                            errorText: state.password.invalid
                                ? 'invalid password (at least 6 signs)'
                                : null),
                      ),
                      SizedBox(
                        height: state.password.invalid ? 24.0 : 46.0,
                      ),
                      CustomButton(
                        color: state.status == FormzStatus.invalid
                            ? Colors.grey
                            : Colors.green,
                        content: Text("LOG IN"),
                        onPressed: () async {
                          if (state.status.isValidated) {
                            _cubit.logInWithCredentials();
                          }
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

// TextField(
//   keyboardType: TextInputType.emailAddress,
//   textAlign: TextAlign.center,
//   onChanged: (email) => login = email,
//   decoration: kTextFieldDecoration.copyWith(
//       hintText: "Enter your email",
//       errorText: 'invalid email'),
// ),
// SizedBox(
//   height: 30.0,
// ),
// TextField(
//   obscureText: true,
//   textAlign: TextAlign.center,
//   onChanged: (pass) => password = pass,
//   decoration: kTextFieldDecoration.copyWith(
//       hintText: "Enter your password",
//       //labelText: 'password',
//       errorText: 'invalid password (at least 6 signs)'),
// ),
// SizedBox(
//   height: 46.0,
// ),

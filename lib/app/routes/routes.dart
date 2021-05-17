import 'package:flutter/widgets.dart';
import 'package:movies_list_app/app/bloc/app_bloc.dart';
import 'package:movies_list_app/screens/home/home.dart';
import 'package:movies_list_app/screens/welcome_screen.dart';

List<Page> onGenerateAppViewPages(AppStatus state, List<Page<dynamic>> pages) {
  switch (state) {
    case AppStatus.authenticated:
      return [HomePage.page()];
    case AppStatus.unauthenticated:
    default:
      return [WelcomeScreen.page()];
  }
}

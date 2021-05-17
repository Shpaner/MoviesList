import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_list_app/injection/injection.dart';
import 'package:movies_list_app/screens/home/cubit/home_cubit.dart';
import 'package:movies_list_app/screens/home/view/home_form.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  static Page page() => MaterialPage<void>(child: HomePage());

  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => const HomePage());
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: BlocProvider(
        create: (BuildContext context) => HomeCubit(getIt.get()),
        child: HomeForm(),
      ),
    );
  }
}

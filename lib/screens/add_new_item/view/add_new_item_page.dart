import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_list_app/injection/injection.dart';
import 'package:movies_list_app/screens/add_new_item/cubit/add_new_item_cubit.dart';

import 'add_new_item_form.dart';

class AddNewItemPage extends StatelessWidget {
  const AddNewItemPage({Key? key}) : super(key: key);

  static Page page() => MaterialPage<void>(child: AddNewItemPage());

  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => const AddNewItemPage());
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: BlocProvider(
        create: (BuildContext context) => AddNewItemCubit(getIt.get()),
        child: AddNewItemForm(),
      ),
    );
  }
}

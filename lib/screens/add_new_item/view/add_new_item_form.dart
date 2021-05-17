import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_list_app/components/custom_button.dart';
import 'package:movies_list_app/injection/injection.dart';
import 'package:movies_list_app/screens/add_new_item/add_new_item.dart';

class AddNewItemForm extends StatelessWidget {
  final AddNewItemCubit _cubit = AddNewItemCubit(getIt.get());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          behavior: HitTestBehavior.translucent,
          onTap: () => Navigator.pop(context),
          child: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                onChanged: (text) => _cubit.setMovieName(text),
                decoration: InputDecoration(
                  labelText: 'Name',
                  labelStyle: TextStyle(
                    fontSize: 22.0,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 24.0, left: 16.0, right: 16.0, bottom: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Category',
                    style: TextStyle(
                      color: Colors.grey[400],
                      fontSize: 22.0,
                    ),
                    textAlign: TextAlign.start,
                  ),
                  BlocBuilder<AddNewItemCubit, AddNewItemState>(
                      bloc: _cubit,
                      builder: (context, state) {
                        return Padding(
                          padding: const EdgeInsets.only(top: 15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              CategoryPill(
                                  text: 'Book',
                                  category: Categories.book,
                                  cubit: _cubit),
                              CategoryPill(
                                  text: 'Movie',
                                  category: Categories.movie,
                                  cubit: _cubit),
                              CategoryPill(
                                  text: 'Song',
                                  category: Categories.song,
                                  cubit: _cubit),
                            ],
                          ),
                        );
                      }),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                onChanged: (text) => _cubit.setArtists(text),
                decoration: InputDecoration(
                  labelText: 'Directors/ Actors/ Artists...',
                  labelStyle: TextStyle(
                    fontSize: 22.0,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                onChanged: (text) => _cubit.setMovieDescription(text),
                decoration: InputDecoration(
                  labelText: 'Description',
                  labelStyle: TextStyle(
                    fontSize: 22.0,
                  ),
                ),
              ),
            ),
            CustomButton(
                color: Colors.green,
                content: Text(
                  'Add new item',
                  style: TextStyle(fontSize: 20.0),
                ),
                onPressed: () {
                  _cubit.addNewItem();
                  Navigator.pop(context);
                }),
          ],
        ),
      ),
    );
  }
}

class CategoryPill extends StatelessWidget {
  const CategoryPill(
      {required this.text, required this.category, required this.cubit});

  final String text;
  final Categories category;
  final AddNewItemCubit cubit;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => cubit.setCategory(category),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 12.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15.0)),
          color: category == cubit.state.category ? Colors.green : Colors.grey,
        ),
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Text(
            text,
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}

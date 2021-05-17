import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart';
import 'package:movies_list_app/components/custom_button.dart';
import 'package:movies_list_app/injection/injection.dart';
import 'package:movies_list_app/screens/add_new_item/cubit/add_new_item_cubit.dart';
import 'package:movies_list_app/screens/add_new_item/view/add_new_item_form.dart';
import 'package:movies_list_app/screens/edit_item/cubit/edit_item_cubit.dart';

class EditItemScreen extends StatefulWidget {
  final String name;
  final String artists;
  final String category;
  final String description;
  final IconData icon;
  final String id;

  EditItemScreen(
      {required this.name,
      required this.artists,
      required this.category,
      required this.description,
      required this.icon,
      required this.id});

  @override
  _EditItemScreenState createState() => _EditItemScreenState();
}

class _EditItemScreenState extends State<EditItemScreen> {
  final EditItemCubit _cubit = EditItemCubit(getIt.get());

  @override
  void initState() {
    super.initState();
    _cubit.setAllStates(
      widget.name,
      widget.artists,
      widget.description,
      stringToCategory(widget.category),
    );
  }

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
              child: TextFormField(
                initialValue: widget.name,
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
                  BlocBuilder<EditItemCubit, EditItemState>(
                      bloc: _cubit,
                      builder: (context, state) {
                        return Padding(
                          padding: const EdgeInsets.only(top: 15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              CategoryPill2(
                                  text: 'Book',
                                  category: Categories.book,
                                  cubit: _cubit),
                              CategoryPill2(
                                  text: 'Movie',
                                  category: Categories.movie,
                                  cubit: _cubit),
                              CategoryPill2(
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
              child: TextFormField(
                initialValue: widget.artists,
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
              child: TextFormField(
                initialValue: widget.description,
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
                  'Edit item',
                  style: TextStyle(fontSize: 20.0),
                ),
                onPressed: () {
                  _cubit.updateItem(widget.id);
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('${widget.name} edited.')));
                  Navigator.pop(context);
                }),
          ],
        ),
      ),
    );
  }
}

Categories stringToCategory(String cat) {
  String categoryName = cat.split(".")[1];
  if (categoryName == 'book') {
    return Categories.book;
  }

  if (categoryName == 'movie') {
    return Categories.movie;
  }

  if (categoryName == 'song') {
    return Categories.song;
  }

  return Categories.book;
}

class CategoryPill2 extends StatelessWidget {
  const CategoryPill2(
      {required this.text, required this.category, required this.cubit});

  final String text;
  final Categories category;
  final EditItemCubit cubit;

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

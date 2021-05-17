import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_list_app/app/bloc/app_bloc.dart';
import 'package:movies_list_app/injection/injection.dart';
import 'package:movies_list_app/screens/add_new_item/add_new_item.dart';
import 'package:movies_list_app/screens/edit_item/view/edit_item_page.dart';
import 'package:movies_list_app/screens/home/cubit/home_cubit.dart';
import 'package:movies_list_app/screens/selected_item/selected_item_screen.dart';

class HomeForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final HomeCubit _cubit = HomeCubit(getIt.get());

    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          behavior: HitTestBehavior.translucent,
          onTap: () =>
              BlocProvider.of<AppBloc>(context).add(AppLogoutRequested()),
          child: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 80.0),
          child: StreamBuilder<QuerySnapshot>(
              stream: _cubit.collection,
              builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                if (snapshot.hasError) {
                  return Text('Something went wrong');
                }

                if (snapshot.connectionState == ConnectionState.waiting) {
                  return CircularProgressIndicator();
                }

                return ListView(
                  children:
                      snapshot.data!.docs.map((DocumentSnapshot document) {
                    // final item = document.data();
                    return Dismissible(
                      key: UniqueKey(),
                      confirmDismiss: (direction) async {
                        if (direction == DismissDirection.endToStart) {
                          _cubit.removeItem(document.id);
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content: Text(
                                  '${document.data()!['name']} dismissed')));
                          return true;
                        }

                        if (direction == DismissDirection.startToEnd) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => EditItemScreen(
                                      id: document.id,
                                      name: document.data()!['name'],
                                      artists: document.data()!['artists'],
                                      category: document.data()!['category'],
                                      description:
                                          document.data()!['description'],
                                      icon: categoryIcon(
                                        document.data()!['category'],
                                      ))));
                          return false;
                        }
                      },
                      background: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          color: Colors.blue,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.edit,
                                  size: 22.0,
                                ),
                                SizedBox(width: 5.0),
                                Text(
                                  'Edit',
                                  style: TextStyle(
                                    fontSize: 22.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      secondaryBackground: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          color: Colors.red,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  'Delete',
                                  style: TextStyle(
                                    fontSize: 22.0,
                                  ),
                                ),
                                SizedBox(width: 5.0),
                                Icon(
                                  Icons.delete_forever,
                                  size: 22.0,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListTile(
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SelectedItemPage(
                                  name: document.data()!['name'],
                                  artists: document.data()!['artists'],
                                  category: document.data()!['category'],
                                  description: document.data()!['description'],
                                  icon: categoryIcon(
                                      document.data()!['category']),
                                  isFavorite: document.data()!['isFavorite'],
                                ),
                              )),
                          title: Text(
                            '${document.data()!['name']}',
                            style: TextStyle(
                              fontSize: 20.0,
                            ),
                          ),
                          subtitle: Text('${document.data()!['artists']}'),
                          tileColor: Colors.grey[800],
                          leading: GestureDetector(
                            onTap: () {
                              _cubit.changeItemFavoriteProperty(
                                  document.id, !document.data()!['isFavorite']);
                            },
                            child: document.data()!['isFavorite']
                                ? Icon(
                                    Icons.star,
                                    color: Colors.yellowAccent,
                                  )
                                : Icon(
                                    Icons.star_border,
                                    color: Colors.yellowAccent,
                                  ),
                          ),
                          trailing: Icon(
                            categoryIcon(document.data()!['category']),
                            size: 25.0,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    );
                  }).toList(),
                );
              }),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.push(context, AddNewItemPage.route());
        },
      ),
    );
  }

  IconData categoryIcon(String data) {
    if (data == Categories.book.toString()) {
      return Icons.book;
    }

    if (data == Categories.movie.toString()) {
      return Icons.movie_creation_outlined;
    }

    if (data == Categories.song.toString()) {
      return Icons.music_note;
    }

    return Icons.movie_creation_outlined;
  }
}

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import 'package:movies_list_app/injection/injection.dart';
import 'package:movies_list_app/repositories/authentication_repository.dart';

@lazySingleton
class LibraryRepository {
  CollectionReference get getItemsRef =>
      FirebaseFirestore.instance.collection('items');

  String get user => getIt.get<AuthenticationRepository>().currentUser.id;

  void addNewItemToCollection(
      String name, String artists, String category, String description) {
    getItemsRef.add({
      'name': name,
      'artists': artists,
      'category': category,
      'description': description,
      'isFavorite': false,
      'owner': user,
    }).catchError((error) => print('Failed to add new item: $error'));
  }

  void removeItemFromCollection(String uniqueId) {
    getItemsRef
        .doc(uniqueId)
        .delete()
        .catchError((error) => print('Failed to delete: $error'));
  }

  void changeItemIsFavoriteStatus(String uniqueId, bool shouldBeFavorite) {
    getItemsRef
        .doc(uniqueId)
        .update({'isFavorite': shouldBeFavorite}).catchError(
            (error) => print('Failed to update document: $error'));
  }

  void updateItem(String name, String artists, String category,
      String description, String uniqueId) {
    print(user);

    getItemsRef.doc(uniqueId).update({
      'name': name,
      'artists': artists,
      'category': category,
      'description': description,
    }).catchError((error) => print('Failed to update document: $error'));
  }
}

class Item {
  final String name;
  final String description;
  late final bool isFavorite;

  Item(
      {required this.name,
      required this.description,
      required this.isFavorite});

  // set setIsFavoriteBool(bool shouldBeFavorite) {
  //   isFavorite = shouldBeFavorite;
  // }
}

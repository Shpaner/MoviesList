import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movies_list_app/repositories/library_repository.dart';

part 'home_cubit.freezed.dart';

class HomeCubit extends Cubit<HomeState> {
  final LibraryRepository _libraryRepository;
  HomeCubit(this._libraryRepository) : super(HomeState.init());

  get currentUser => _libraryRepository.user;

  // get collection => _libraryRepository.getItemsRef.snapshots();
  get collection => _libraryRepository.getItemsRef
      .where("owner", isEqualTo: currentUser)
      .snapshots();

  void removeItem(String uniqueId) =>
      _libraryRepository.removeItemFromCollection(uniqueId);

  void changeItemFavoriteProperty(String uniqueId, bool shouldBeFavorite) {
    _libraryRepository.changeItemIsFavoriteStatus(uniqueId, shouldBeFavorite);
  }
}

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required bool isLoading,
  }) = _HomeState;

  const HomeState._();

  factory HomeState.init() => HomeState(isLoading: false);
}

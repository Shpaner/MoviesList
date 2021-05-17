import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movies_list_app/repositories/library_repository.dart';
import 'package:movies_list_app/screens/add_new_item/cubit/add_new_item_cubit.dart';

part 'edit_item_cubit.freezed.dart';

class EditItemCubit extends Cubit<EditItemState> {
  final LibraryRepository _libraryRepository;
  EditItemCubit(this._libraryRepository) : super(EditItemState.init());

  void updateItem(String id) {
    _libraryRepository.updateItem(state.movieName, state.artists,
        state.category.toString(), state.movieDescription, id);
    //print(state.category.toString());
  }

  void setMovieName(String name) => emit(state.copyWith(movieName: name));

  void setArtists(String artists) => emit(state.copyWith(artists: artists));

  void setMovieDescription(String desc) =>
      emit(state.copyWith(movieDescription: desc));

  void setCategory(Categories category) =>
      emit(state.copyWith(category: category));

  void setAllStates(
      String name, String artists, String desc, Categories category) {
    emit(state.copyWith(
        movieName: name,
        artists: artists,
        movieDescription: desc,
        category: category));
  }
}

@freezed
class EditItemState with _$EditItemState {
  const factory EditItemState({
    required String movieName,
    required String artists,
    required String movieDescription,
    required Categories category,
  }) = _EditItemState;

  const EditItemState._();

  factory EditItemState.init() => EditItemState(
        movieName: '',
        artists: '',
        movieDescription: '',
        category: Categories.book,
      );
}

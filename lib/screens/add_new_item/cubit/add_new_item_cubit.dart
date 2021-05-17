import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movies_list_app/repositories/library_repository.dart';

part 'add_new_item_cubit.freezed.dart';

class AddNewItemCubit extends Cubit<AddNewItemState> {
  final LibraryRepository _libraryRepository;
  AddNewItemCubit(this._libraryRepository) : super(AddNewItemState.init());

  void addNewItem() {
    _libraryRepository.addNewItemToCollection(state.movieName, state.artists,
        state.category.toString(), state.movieDescription);
    emit(state.copyWith(category: Categories.book));
  }

  void setMovieName(String name) => emit(state.copyWith(movieName: name));

  void setArtists(String artists) => emit(state.copyWith(artists: artists));

  void setMovieDescription(String desc) =>
      emit(state.copyWith(movieDescription: desc));

  void setCategory(Categories category) =>
      emit(state.copyWith(category: category));
}

@freezed
class AddNewItemState with _$AddNewItemState {
  const factory AddNewItemState({
    required String movieName,
    required String artists,
    required String movieDescription,
    required Categories category,
  }) = _AddNewItemState;

  const AddNewItemState._();

  factory AddNewItemState.init() => AddNewItemState(
        movieName: '',
        artists: '',
        movieDescription: '',
        category: Categories.book,
      );
}

enum Categories { book, movie, song }

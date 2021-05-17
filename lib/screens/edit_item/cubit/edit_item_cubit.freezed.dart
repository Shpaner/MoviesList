// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'edit_item_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$EditItemStateTearOff {
  const _$EditItemStateTearOff();

  _EditItemState call(
      {required String movieName,
      required String artists,
      required String movieDescription,
      required Categories category}) {
    return _EditItemState(
      movieName: movieName,
      artists: artists,
      movieDescription: movieDescription,
      category: category,
    );
  }
}

/// @nodoc
const $EditItemState = _$EditItemStateTearOff();

/// @nodoc
mixin _$EditItemState {
  String get movieName => throw _privateConstructorUsedError;
  String get artists => throw _privateConstructorUsedError;
  String get movieDescription => throw _privateConstructorUsedError;
  Categories get category => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EditItemStateCopyWith<EditItemState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditItemStateCopyWith<$Res> {
  factory $EditItemStateCopyWith(
          EditItemState value, $Res Function(EditItemState) then) =
      _$EditItemStateCopyWithImpl<$Res>;
  $Res call(
      {String movieName,
      String artists,
      String movieDescription,
      Categories category});
}

/// @nodoc
class _$EditItemStateCopyWithImpl<$Res>
    implements $EditItemStateCopyWith<$Res> {
  _$EditItemStateCopyWithImpl(this._value, this._then);

  final EditItemState _value;
  // ignore: unused_field
  final $Res Function(EditItemState) _then;

  @override
  $Res call({
    Object? movieName = freezed,
    Object? artists = freezed,
    Object? movieDescription = freezed,
    Object? category = freezed,
  }) {
    return _then(_value.copyWith(
      movieName: movieName == freezed
          ? _value.movieName
          : movieName // ignore: cast_nullable_to_non_nullable
              as String,
      artists: artists == freezed
          ? _value.artists
          : artists // ignore: cast_nullable_to_non_nullable
              as String,
      movieDescription: movieDescription == freezed
          ? _value.movieDescription
          : movieDescription // ignore: cast_nullable_to_non_nullable
              as String,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Categories,
    ));
  }
}

/// @nodoc
abstract class _$EditItemStateCopyWith<$Res>
    implements $EditItemStateCopyWith<$Res> {
  factory _$EditItemStateCopyWith(
          _EditItemState value, $Res Function(_EditItemState) then) =
      __$EditItemStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String movieName,
      String artists,
      String movieDescription,
      Categories category});
}

/// @nodoc
class __$EditItemStateCopyWithImpl<$Res>
    extends _$EditItemStateCopyWithImpl<$Res>
    implements _$EditItemStateCopyWith<$Res> {
  __$EditItemStateCopyWithImpl(
      _EditItemState _value, $Res Function(_EditItemState) _then)
      : super(_value, (v) => _then(v as _EditItemState));

  @override
  _EditItemState get _value => super._value as _EditItemState;

  @override
  $Res call({
    Object? movieName = freezed,
    Object? artists = freezed,
    Object? movieDescription = freezed,
    Object? category = freezed,
  }) {
    return _then(_EditItemState(
      movieName: movieName == freezed
          ? _value.movieName
          : movieName // ignore: cast_nullable_to_non_nullable
              as String,
      artists: artists == freezed
          ? _value.artists
          : artists // ignore: cast_nullable_to_non_nullable
              as String,
      movieDescription: movieDescription == freezed
          ? _value.movieDescription
          : movieDescription // ignore: cast_nullable_to_non_nullable
              as String,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Categories,
    ));
  }
}

/// @nodoc
class _$_EditItemState extends _EditItemState {
  const _$_EditItemState(
      {required this.movieName,
      required this.artists,
      required this.movieDescription,
      required this.category})
      : super._();

  @override
  final String movieName;
  @override
  final String artists;
  @override
  final String movieDescription;
  @override
  final Categories category;

  @override
  String toString() {
    return 'EditItemState(movieName: $movieName, artists: $artists, movieDescription: $movieDescription, category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EditItemState &&
            (identical(other.movieName, movieName) ||
                const DeepCollectionEquality()
                    .equals(other.movieName, movieName)) &&
            (identical(other.artists, artists) ||
                const DeepCollectionEquality()
                    .equals(other.artists, artists)) &&
            (identical(other.movieDescription, movieDescription) ||
                const DeepCollectionEquality()
                    .equals(other.movieDescription, movieDescription)) &&
            (identical(other.category, category) ||
                const DeepCollectionEquality()
                    .equals(other.category, category)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(movieName) ^
      const DeepCollectionEquality().hash(artists) ^
      const DeepCollectionEquality().hash(movieDescription) ^
      const DeepCollectionEquality().hash(category);

  @JsonKey(ignore: true)
  @override
  _$EditItemStateCopyWith<_EditItemState> get copyWith =>
      __$EditItemStateCopyWithImpl<_EditItemState>(this, _$identity);
}

abstract class _EditItemState extends EditItemState {
  const factory _EditItemState(
      {required String movieName,
      required String artists,
      required String movieDescription,
      required Categories category}) = _$_EditItemState;
  const _EditItemState._() : super._();

  @override
  String get movieName => throw _privateConstructorUsedError;
  @override
  String get artists => throw _privateConstructorUsedError;
  @override
  String get movieDescription => throw _privateConstructorUsedError;
  @override
  Categories get category => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$EditItemStateCopyWith<_EditItemState> get copyWith =>
      throw _privateConstructorUsedError;
}

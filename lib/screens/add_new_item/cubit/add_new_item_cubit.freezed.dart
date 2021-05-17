// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'add_new_item_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AddNewItemStateTearOff {
  const _$AddNewItemStateTearOff();

  _AddNewItemState call(
      {required String movieName,
      required String artists,
      required String movieDescription,
      required Categories category}) {
    return _AddNewItemState(
      movieName: movieName,
      artists: artists,
      movieDescription: movieDescription,
      category: category,
    );
  }
}

/// @nodoc
const $AddNewItemState = _$AddNewItemStateTearOff();

/// @nodoc
mixin _$AddNewItemState {
  String get movieName => throw _privateConstructorUsedError;
  String get artists => throw _privateConstructorUsedError;
  String get movieDescription => throw _privateConstructorUsedError;
  Categories get category => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddNewItemStateCopyWith<AddNewItemState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddNewItemStateCopyWith<$Res> {
  factory $AddNewItemStateCopyWith(
          AddNewItemState value, $Res Function(AddNewItemState) then) =
      _$AddNewItemStateCopyWithImpl<$Res>;
  $Res call(
      {String movieName,
      String artists,
      String movieDescription,
      Categories category});
}

/// @nodoc
class _$AddNewItemStateCopyWithImpl<$Res>
    implements $AddNewItemStateCopyWith<$Res> {
  _$AddNewItemStateCopyWithImpl(this._value, this._then);

  final AddNewItemState _value;
  // ignore: unused_field
  final $Res Function(AddNewItemState) _then;

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
abstract class _$AddNewItemStateCopyWith<$Res>
    implements $AddNewItemStateCopyWith<$Res> {
  factory _$AddNewItemStateCopyWith(
          _AddNewItemState value, $Res Function(_AddNewItemState) then) =
      __$AddNewItemStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String movieName,
      String artists,
      String movieDescription,
      Categories category});
}

/// @nodoc
class __$AddNewItemStateCopyWithImpl<$Res>
    extends _$AddNewItemStateCopyWithImpl<$Res>
    implements _$AddNewItemStateCopyWith<$Res> {
  __$AddNewItemStateCopyWithImpl(
      _AddNewItemState _value, $Res Function(_AddNewItemState) _then)
      : super(_value, (v) => _then(v as _AddNewItemState));

  @override
  _AddNewItemState get _value => super._value as _AddNewItemState;

  @override
  $Res call({
    Object? movieName = freezed,
    Object? artists = freezed,
    Object? movieDescription = freezed,
    Object? category = freezed,
  }) {
    return _then(_AddNewItemState(
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
class _$_AddNewItemState extends _AddNewItemState with DiagnosticableTreeMixin {
  const _$_AddNewItemState(
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
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AddNewItemState(movieName: $movieName, artists: $artists, movieDescription: $movieDescription, category: $category)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AddNewItemState'))
      ..add(DiagnosticsProperty('movieName', movieName))
      ..add(DiagnosticsProperty('artists', artists))
      ..add(DiagnosticsProperty('movieDescription', movieDescription))
      ..add(DiagnosticsProperty('category', category));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddNewItemState &&
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
  _$AddNewItemStateCopyWith<_AddNewItemState> get copyWith =>
      __$AddNewItemStateCopyWithImpl<_AddNewItemState>(this, _$identity);
}

abstract class _AddNewItemState extends AddNewItemState {
  const factory _AddNewItemState(
      {required String movieName,
      required String artists,
      required String movieDescription,
      required Categories category}) = _$_AddNewItemState;
  const _AddNewItemState._() : super._();

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
  _$AddNewItemStateCopyWith<_AddNewItemState> get copyWith =>
      throw _privateConstructorUsedError;
}

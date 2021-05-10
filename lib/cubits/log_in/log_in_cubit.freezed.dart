// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'log_in_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LogInStateTearOff {
  const _$LogInStateTearOff();

  _LogInState call(
      {required Email email,
      required Password password,
      required bool isLoading,
      required bool isSuccess,
      required AppExceptions dialogException,
      required AppExceptions emailException,
      required AppExceptions passwordException}) {
    return _LogInState(
      email: email,
      password: password,
      isLoading: isLoading,
      isSuccess: isSuccess,
      dialogException: dialogException,
      emailException: emailException,
      passwordException: passwordException,
    );
  }
}

/// @nodoc
const $LogInState = _$LogInStateTearOff();

/// @nodoc
mixin _$LogInState {
  Email get email => throw _privateConstructorUsedError;
  Password get password => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isSuccess => throw _privateConstructorUsedError;
  AppExceptions get dialogException => throw _privateConstructorUsedError;
  AppExceptions get emailException => throw _privateConstructorUsedError;
  AppExceptions get passwordException => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LogInStateCopyWith<LogInState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LogInStateCopyWith<$Res> {
  factory $LogInStateCopyWith(
          LogInState value, $Res Function(LogInState) then) =
      _$LogInStateCopyWithImpl<$Res>;
  $Res call(
      {Email email,
      Password password,
      bool isLoading,
      bool isSuccess,
      AppExceptions dialogException,
      AppExceptions emailException,
      AppExceptions passwordException});

  $EmailCopyWith<$Res> get email;
  $PasswordCopyWith<$Res> get password;
}

/// @nodoc
class _$LogInStateCopyWithImpl<$Res> implements $LogInStateCopyWith<$Res> {
  _$LogInStateCopyWithImpl(this._value, this._then);

  final LogInState _value;
  // ignore: unused_field
  final $Res Function(LogInState) _then;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
    Object? isLoading = freezed,
    Object? isSuccess = freezed,
    Object? dialogException = freezed,
    Object? emailException = freezed,
    Object? passwordException = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as Email,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isSuccess: isSuccess == freezed
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      dialogException: dialogException == freezed
          ? _value.dialogException
          : dialogException // ignore: cast_nullable_to_non_nullable
              as AppExceptions,
      emailException: emailException == freezed
          ? _value.emailException
          : emailException // ignore: cast_nullable_to_non_nullable
              as AppExceptions,
      passwordException: passwordException == freezed
          ? _value.passwordException
          : passwordException // ignore: cast_nullable_to_non_nullable
              as AppExceptions,
    ));
  }

  @override
  $EmailCopyWith<$Res> get email {
    return $EmailCopyWith<$Res>(_value.email, (value) {
      return _then(_value.copyWith(email: value));
    });
  }

  @override
  $PasswordCopyWith<$Res> get password {
    return $PasswordCopyWith<$Res>(_value.password, (value) {
      return _then(_value.copyWith(password: value));
    });
  }
}

/// @nodoc
abstract class _$LogInStateCopyWith<$Res> implements $LogInStateCopyWith<$Res> {
  factory _$LogInStateCopyWith(
          _LogInState value, $Res Function(_LogInState) then) =
      __$LogInStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Email email,
      Password password,
      bool isLoading,
      bool isSuccess,
      AppExceptions dialogException,
      AppExceptions emailException,
      AppExceptions passwordException});

  @override
  $EmailCopyWith<$Res> get email;
  @override
  $PasswordCopyWith<$Res> get password;
}

/// @nodoc
class __$LogInStateCopyWithImpl<$Res> extends _$LogInStateCopyWithImpl<$Res>
    implements _$LogInStateCopyWith<$Res> {
  __$LogInStateCopyWithImpl(
      _LogInState _value, $Res Function(_LogInState) _then)
      : super(_value, (v) => _then(v as _LogInState));

  @override
  _LogInState get _value => super._value as _LogInState;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
    Object? isLoading = freezed,
    Object? isSuccess = freezed,
    Object? dialogException = freezed,
    Object? emailException = freezed,
    Object? passwordException = freezed,
  }) {
    return _then(_LogInState(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as Email,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isSuccess: isSuccess == freezed
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      dialogException: dialogException == freezed
          ? _value.dialogException
          : dialogException // ignore: cast_nullable_to_non_nullable
              as AppExceptions,
      emailException: emailException == freezed
          ? _value.emailException
          : emailException // ignore: cast_nullable_to_non_nullable
              as AppExceptions,
      passwordException: passwordException == freezed
          ? _value.passwordException
          : passwordException // ignore: cast_nullable_to_non_nullable
              as AppExceptions,
    ));
  }
}

/// @nodoc

class _$_LogInState extends _LogInState {
  const _$_LogInState(
      {required this.email,
      required this.password,
      required this.isLoading,
      required this.isSuccess,
      required this.dialogException,
      required this.emailException,
      required this.passwordException})
      : super._();

  @override
  final Email email;
  @override
  final Password password;
  @override
  final bool isLoading;
  @override
  final bool isSuccess;
  @override
  final AppExceptions dialogException;
  @override
  final AppExceptions emailException;
  @override
  final AppExceptions passwordException;

  @override
  String toString() {
    return 'LogInState(email: $email, password: $password, isLoading: $isLoading, isSuccess: $isSuccess, dialogException: $dialogException, emailException: $emailException, passwordException: $passwordException)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LogInState &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.isSuccess, isSuccess) ||
                const DeepCollectionEquality()
                    .equals(other.isSuccess, isSuccess)) &&
            (identical(other.dialogException, dialogException) ||
                const DeepCollectionEquality()
                    .equals(other.dialogException, dialogException)) &&
            (identical(other.emailException, emailException) ||
                const DeepCollectionEquality()
                    .equals(other.emailException, emailException)) &&
            (identical(other.passwordException, passwordException) ||
                const DeepCollectionEquality()
                    .equals(other.passwordException, passwordException)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(isSuccess) ^
      const DeepCollectionEquality().hash(dialogException) ^
      const DeepCollectionEquality().hash(emailException) ^
      const DeepCollectionEquality().hash(passwordException);

  @JsonKey(ignore: true)
  @override
  _$LogInStateCopyWith<_LogInState> get copyWith =>
      __$LogInStateCopyWithImpl<_LogInState>(this, _$identity);
}

abstract class _LogInState extends LogInState {
  const factory _LogInState(
      {required Email email,
      required Password password,
      required bool isLoading,
      required bool isSuccess,
      required AppExceptions dialogException,
      required AppExceptions emailException,
      required AppExceptions passwordException}) = _$_LogInState;
  const _LogInState._() : super._();

  @override
  Email get email => throw _privateConstructorUsedError;
  @override
  Password get password => throw _privateConstructorUsedError;
  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  bool get isSuccess => throw _privateConstructorUsedError;
  @override
  AppExceptions get dialogException => throw _privateConstructorUsedError;
  @override
  AppExceptions get emailException => throw _privateConstructorUsedError;
  @override
  AppExceptions get passwordException => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LogInStateCopyWith<_LogInState> get copyWith =>
      throw _privateConstructorUsedError;
}

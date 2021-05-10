// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'exceptions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthExceptionTearOff {
  const _$AuthExceptionTearOff();

  SignUpFailure signUpFailure() {
    return const SignUpFailure();
  }

  LogInPasswordFailure logInPasswordFailure() {
    return const LogInPasswordFailure();
  }

  LogInEmailFailure logInEmailFailure() {
    return const LogInEmailFailure();
  }

  LogOutFailure logOutFailure() {
    return const LogOutFailure();
  }
}

/// @nodoc
const $AuthException = _$AuthExceptionTearOff();

/// @nodoc
mixin _$AuthException {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signUpFailure,
    required TResult Function() logInPasswordFailure,
    required TResult Function() logInEmailFailure,
    required TResult Function() logOutFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signUpFailure,
    TResult Function()? logInPasswordFailure,
    TResult Function()? logInEmailFailure,
    TResult Function()? logOutFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignUpFailure value) signUpFailure,
    required TResult Function(LogInPasswordFailure value) logInPasswordFailure,
    required TResult Function(LogInEmailFailure value) logInEmailFailure,
    required TResult Function(LogOutFailure value) logOutFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUpFailure value)? signUpFailure,
    TResult Function(LogInPasswordFailure value)? logInPasswordFailure,
    TResult Function(LogInEmailFailure value)? logInEmailFailure,
    TResult Function(LogOutFailure value)? logOutFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthExceptionCopyWith<$Res> {
  factory $AuthExceptionCopyWith(
          AuthException value, $Res Function(AuthException) then) =
      _$AuthExceptionCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthExceptionCopyWithImpl<$Res>
    implements $AuthExceptionCopyWith<$Res> {
  _$AuthExceptionCopyWithImpl(this._value, this._then);

  final AuthException _value;
  // ignore: unused_field
  final $Res Function(AuthException) _then;
}

/// @nodoc
abstract class $SignUpFailureCopyWith<$Res> {
  factory $SignUpFailureCopyWith(
          SignUpFailure value, $Res Function(SignUpFailure) then) =
      _$SignUpFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignUpFailureCopyWithImpl<$Res>
    extends _$AuthExceptionCopyWithImpl<$Res>
    implements $SignUpFailureCopyWith<$Res> {
  _$SignUpFailureCopyWithImpl(
      SignUpFailure _value, $Res Function(SignUpFailure) _then)
      : super(_value, (v) => _then(v as SignUpFailure));

  @override
  SignUpFailure get _value => super._value as SignUpFailure;
}

/// @nodoc

class _$SignUpFailure implements SignUpFailure {
  const _$SignUpFailure();

  @override
  String toString() {
    return 'AuthException.signUpFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SignUpFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signUpFailure,
    required TResult Function() logInPasswordFailure,
    required TResult Function() logInEmailFailure,
    required TResult Function() logOutFailure,
  }) {
    return signUpFailure();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signUpFailure,
    TResult Function()? logInPasswordFailure,
    TResult Function()? logInEmailFailure,
    TResult Function()? logOutFailure,
    required TResult orElse(),
  }) {
    if (signUpFailure != null) {
      return signUpFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignUpFailure value) signUpFailure,
    required TResult Function(LogInPasswordFailure value) logInPasswordFailure,
    required TResult Function(LogInEmailFailure value) logInEmailFailure,
    required TResult Function(LogOutFailure value) logOutFailure,
  }) {
    return signUpFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUpFailure value)? signUpFailure,
    TResult Function(LogInPasswordFailure value)? logInPasswordFailure,
    TResult Function(LogInEmailFailure value)? logInEmailFailure,
    TResult Function(LogOutFailure value)? logOutFailure,
    required TResult orElse(),
  }) {
    if (signUpFailure != null) {
      return signUpFailure(this);
    }
    return orElse();
  }
}

abstract class SignUpFailure implements AuthException {
  const factory SignUpFailure() = _$SignUpFailure;
}

/// @nodoc
abstract class $LogInPasswordFailureCopyWith<$Res> {
  factory $LogInPasswordFailureCopyWith(LogInPasswordFailure value,
          $Res Function(LogInPasswordFailure) then) =
      _$LogInPasswordFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$LogInPasswordFailureCopyWithImpl<$Res>
    extends _$AuthExceptionCopyWithImpl<$Res>
    implements $LogInPasswordFailureCopyWith<$Res> {
  _$LogInPasswordFailureCopyWithImpl(
      LogInPasswordFailure _value, $Res Function(LogInPasswordFailure) _then)
      : super(_value, (v) => _then(v as LogInPasswordFailure));

  @override
  LogInPasswordFailure get _value => super._value as LogInPasswordFailure;
}

/// @nodoc

class _$LogInPasswordFailure implements LogInPasswordFailure {
  const _$LogInPasswordFailure();

  @override
  String toString() {
    return 'AuthException.logInPasswordFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LogInPasswordFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signUpFailure,
    required TResult Function() logInPasswordFailure,
    required TResult Function() logInEmailFailure,
    required TResult Function() logOutFailure,
  }) {
    return logInPasswordFailure();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signUpFailure,
    TResult Function()? logInPasswordFailure,
    TResult Function()? logInEmailFailure,
    TResult Function()? logOutFailure,
    required TResult orElse(),
  }) {
    if (logInPasswordFailure != null) {
      return logInPasswordFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignUpFailure value) signUpFailure,
    required TResult Function(LogInPasswordFailure value) logInPasswordFailure,
    required TResult Function(LogInEmailFailure value) logInEmailFailure,
    required TResult Function(LogOutFailure value) logOutFailure,
  }) {
    return logInPasswordFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUpFailure value)? signUpFailure,
    TResult Function(LogInPasswordFailure value)? logInPasswordFailure,
    TResult Function(LogInEmailFailure value)? logInEmailFailure,
    TResult Function(LogOutFailure value)? logOutFailure,
    required TResult orElse(),
  }) {
    if (logInPasswordFailure != null) {
      return logInPasswordFailure(this);
    }
    return orElse();
  }
}

abstract class LogInPasswordFailure implements AuthException {
  const factory LogInPasswordFailure() = _$LogInPasswordFailure;
}

/// @nodoc
abstract class $LogInEmailFailureCopyWith<$Res> {
  factory $LogInEmailFailureCopyWith(
          LogInEmailFailure value, $Res Function(LogInEmailFailure) then) =
      _$LogInEmailFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$LogInEmailFailureCopyWithImpl<$Res>
    extends _$AuthExceptionCopyWithImpl<$Res>
    implements $LogInEmailFailureCopyWith<$Res> {
  _$LogInEmailFailureCopyWithImpl(
      LogInEmailFailure _value, $Res Function(LogInEmailFailure) _then)
      : super(_value, (v) => _then(v as LogInEmailFailure));

  @override
  LogInEmailFailure get _value => super._value as LogInEmailFailure;
}

/// @nodoc

class _$LogInEmailFailure implements LogInEmailFailure {
  const _$LogInEmailFailure();

  @override
  String toString() {
    return 'AuthException.logInEmailFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LogInEmailFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signUpFailure,
    required TResult Function() logInPasswordFailure,
    required TResult Function() logInEmailFailure,
    required TResult Function() logOutFailure,
  }) {
    return logInEmailFailure();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signUpFailure,
    TResult Function()? logInPasswordFailure,
    TResult Function()? logInEmailFailure,
    TResult Function()? logOutFailure,
    required TResult orElse(),
  }) {
    if (logInEmailFailure != null) {
      return logInEmailFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignUpFailure value) signUpFailure,
    required TResult Function(LogInPasswordFailure value) logInPasswordFailure,
    required TResult Function(LogInEmailFailure value) logInEmailFailure,
    required TResult Function(LogOutFailure value) logOutFailure,
  }) {
    return logInEmailFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUpFailure value)? signUpFailure,
    TResult Function(LogInPasswordFailure value)? logInPasswordFailure,
    TResult Function(LogInEmailFailure value)? logInEmailFailure,
    TResult Function(LogOutFailure value)? logOutFailure,
    required TResult orElse(),
  }) {
    if (logInEmailFailure != null) {
      return logInEmailFailure(this);
    }
    return orElse();
  }
}

abstract class LogInEmailFailure implements AuthException {
  const factory LogInEmailFailure() = _$LogInEmailFailure;
}

/// @nodoc
abstract class $LogOutFailureCopyWith<$Res> {
  factory $LogOutFailureCopyWith(
          LogOutFailure value, $Res Function(LogOutFailure) then) =
      _$LogOutFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$LogOutFailureCopyWithImpl<$Res>
    extends _$AuthExceptionCopyWithImpl<$Res>
    implements $LogOutFailureCopyWith<$Res> {
  _$LogOutFailureCopyWithImpl(
      LogOutFailure _value, $Res Function(LogOutFailure) _then)
      : super(_value, (v) => _then(v as LogOutFailure));

  @override
  LogOutFailure get _value => super._value as LogOutFailure;
}

/// @nodoc

class _$LogOutFailure implements LogOutFailure {
  const _$LogOutFailure();

  @override
  String toString() {
    return 'AuthException.logOutFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LogOutFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signUpFailure,
    required TResult Function() logInPasswordFailure,
    required TResult Function() logInEmailFailure,
    required TResult Function() logOutFailure,
  }) {
    return logOutFailure();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signUpFailure,
    TResult Function()? logInPasswordFailure,
    TResult Function()? logInEmailFailure,
    TResult Function()? logOutFailure,
    required TResult orElse(),
  }) {
    if (logOutFailure != null) {
      return logOutFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignUpFailure value) signUpFailure,
    required TResult Function(LogInPasswordFailure value) logInPasswordFailure,
    required TResult Function(LogInEmailFailure value) logInEmailFailure,
    required TResult Function(LogOutFailure value) logOutFailure,
  }) {
    return logOutFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUpFailure value)? signUpFailure,
    TResult Function(LogInPasswordFailure value)? logInPasswordFailure,
    TResult Function(LogInEmailFailure value)? logInEmailFailure,
    TResult Function(LogOutFailure value)? logOutFailure,
    required TResult orElse(),
  }) {
    if (logOutFailure != null) {
      return logOutFailure(this);
    }
    return orElse();
  }
}

abstract class LogOutFailure implements AuthException {
  const factory LogOutFailure() = _$LogOutFailure;
}

/// @nodoc
class _$UIExceptionTearOff {
  const _$UIExceptionTearOff();

  InvalidEmailFormat invalidEmailFormat() {
    return const InvalidEmailFormat();
  }

  ConfirmPasswordMustMatch confirmPasswordMustMatch() {
    return const ConfirmPasswordMustMatch();
  }

  InvalidPasswordFormat invalidPasswordFormat() {
    return const InvalidPasswordFormat();
  }
}

/// @nodoc
const $UIException = _$UIExceptionTearOff();

/// @nodoc
mixin _$UIException {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() invalidEmailFormat,
    required TResult Function() confirmPasswordMustMatch,
    required TResult Function() invalidPasswordFormat,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? invalidEmailFormat,
    TResult Function()? confirmPasswordMustMatch,
    TResult Function()? invalidPasswordFormat,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmailFormat value) invalidEmailFormat,
    required TResult Function(ConfirmPasswordMustMatch value)
        confirmPasswordMustMatch,
    required TResult Function(InvalidPasswordFormat value)
        invalidPasswordFormat,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmailFormat value)? invalidEmailFormat,
    TResult Function(ConfirmPasswordMustMatch value)? confirmPasswordMustMatch,
    TResult Function(InvalidPasswordFormat value)? invalidPasswordFormat,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UIExceptionCopyWith<$Res> {
  factory $UIExceptionCopyWith(
          UIException value, $Res Function(UIException) then) =
      _$UIExceptionCopyWithImpl<$Res>;
}

/// @nodoc
class _$UIExceptionCopyWithImpl<$Res> implements $UIExceptionCopyWith<$Res> {
  _$UIExceptionCopyWithImpl(this._value, this._then);

  final UIException _value;
  // ignore: unused_field
  final $Res Function(UIException) _then;
}

/// @nodoc
abstract class $InvalidEmailFormatCopyWith<$Res> {
  factory $InvalidEmailFormatCopyWith(
          InvalidEmailFormat value, $Res Function(InvalidEmailFormat) then) =
      _$InvalidEmailFormatCopyWithImpl<$Res>;
}

/// @nodoc
class _$InvalidEmailFormatCopyWithImpl<$Res>
    extends _$UIExceptionCopyWithImpl<$Res>
    implements $InvalidEmailFormatCopyWith<$Res> {
  _$InvalidEmailFormatCopyWithImpl(
      InvalidEmailFormat _value, $Res Function(InvalidEmailFormat) _then)
      : super(_value, (v) => _then(v as InvalidEmailFormat));

  @override
  InvalidEmailFormat get _value => super._value as InvalidEmailFormat;
}

/// @nodoc

class _$InvalidEmailFormat implements InvalidEmailFormat {
  const _$InvalidEmailFormat();

  @override
  String toString() {
    return 'UIException.invalidEmailFormat()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InvalidEmailFormat);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() invalidEmailFormat,
    required TResult Function() confirmPasswordMustMatch,
    required TResult Function() invalidPasswordFormat,
  }) {
    return invalidEmailFormat();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? invalidEmailFormat,
    TResult Function()? confirmPasswordMustMatch,
    TResult Function()? invalidPasswordFormat,
    required TResult orElse(),
  }) {
    if (invalidEmailFormat != null) {
      return invalidEmailFormat();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmailFormat value) invalidEmailFormat,
    required TResult Function(ConfirmPasswordMustMatch value)
        confirmPasswordMustMatch,
    required TResult Function(InvalidPasswordFormat value)
        invalidPasswordFormat,
  }) {
    return invalidEmailFormat(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmailFormat value)? invalidEmailFormat,
    TResult Function(ConfirmPasswordMustMatch value)? confirmPasswordMustMatch,
    TResult Function(InvalidPasswordFormat value)? invalidPasswordFormat,
    required TResult orElse(),
  }) {
    if (invalidEmailFormat != null) {
      return invalidEmailFormat(this);
    }
    return orElse();
  }
}

abstract class InvalidEmailFormat implements UIException {
  const factory InvalidEmailFormat() = _$InvalidEmailFormat;
}

/// @nodoc
abstract class $ConfirmPasswordMustMatchCopyWith<$Res> {
  factory $ConfirmPasswordMustMatchCopyWith(ConfirmPasswordMustMatch value,
          $Res Function(ConfirmPasswordMustMatch) then) =
      _$ConfirmPasswordMustMatchCopyWithImpl<$Res>;
}

/// @nodoc
class _$ConfirmPasswordMustMatchCopyWithImpl<$Res>
    extends _$UIExceptionCopyWithImpl<$Res>
    implements $ConfirmPasswordMustMatchCopyWith<$Res> {
  _$ConfirmPasswordMustMatchCopyWithImpl(ConfirmPasswordMustMatch _value,
      $Res Function(ConfirmPasswordMustMatch) _then)
      : super(_value, (v) => _then(v as ConfirmPasswordMustMatch));

  @override
  ConfirmPasswordMustMatch get _value =>
      super._value as ConfirmPasswordMustMatch;
}

/// @nodoc

class _$ConfirmPasswordMustMatch implements ConfirmPasswordMustMatch {
  const _$ConfirmPasswordMustMatch();

  @override
  String toString() {
    return 'UIException.confirmPasswordMustMatch()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ConfirmPasswordMustMatch);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() invalidEmailFormat,
    required TResult Function() confirmPasswordMustMatch,
    required TResult Function() invalidPasswordFormat,
  }) {
    return confirmPasswordMustMatch();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? invalidEmailFormat,
    TResult Function()? confirmPasswordMustMatch,
    TResult Function()? invalidPasswordFormat,
    required TResult orElse(),
  }) {
    if (confirmPasswordMustMatch != null) {
      return confirmPasswordMustMatch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmailFormat value) invalidEmailFormat,
    required TResult Function(ConfirmPasswordMustMatch value)
        confirmPasswordMustMatch,
    required TResult Function(InvalidPasswordFormat value)
        invalidPasswordFormat,
  }) {
    return confirmPasswordMustMatch(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmailFormat value)? invalidEmailFormat,
    TResult Function(ConfirmPasswordMustMatch value)? confirmPasswordMustMatch,
    TResult Function(InvalidPasswordFormat value)? invalidPasswordFormat,
    required TResult orElse(),
  }) {
    if (confirmPasswordMustMatch != null) {
      return confirmPasswordMustMatch(this);
    }
    return orElse();
  }
}

abstract class ConfirmPasswordMustMatch implements UIException {
  const factory ConfirmPasswordMustMatch() = _$ConfirmPasswordMustMatch;
}

/// @nodoc
abstract class $InvalidPasswordFormatCopyWith<$Res> {
  factory $InvalidPasswordFormatCopyWith(InvalidPasswordFormat value,
          $Res Function(InvalidPasswordFormat) then) =
      _$InvalidPasswordFormatCopyWithImpl<$Res>;
}

/// @nodoc
class _$InvalidPasswordFormatCopyWithImpl<$Res>
    extends _$UIExceptionCopyWithImpl<$Res>
    implements $InvalidPasswordFormatCopyWith<$Res> {
  _$InvalidPasswordFormatCopyWithImpl(
      InvalidPasswordFormat _value, $Res Function(InvalidPasswordFormat) _then)
      : super(_value, (v) => _then(v as InvalidPasswordFormat));

  @override
  InvalidPasswordFormat get _value => super._value as InvalidPasswordFormat;
}

/// @nodoc

class _$InvalidPasswordFormat implements InvalidPasswordFormat {
  const _$InvalidPasswordFormat();

  @override
  String toString() {
    return 'UIException.invalidPasswordFormat()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InvalidPasswordFormat);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() invalidEmailFormat,
    required TResult Function() confirmPasswordMustMatch,
    required TResult Function() invalidPasswordFormat,
  }) {
    return invalidPasswordFormat();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? invalidEmailFormat,
    TResult Function()? confirmPasswordMustMatch,
    TResult Function()? invalidPasswordFormat,
    required TResult orElse(),
  }) {
    if (invalidPasswordFormat != null) {
      return invalidPasswordFormat();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmailFormat value) invalidEmailFormat,
    required TResult Function(ConfirmPasswordMustMatch value)
        confirmPasswordMustMatch,
    required TResult Function(InvalidPasswordFormat value)
        invalidPasswordFormat,
  }) {
    return invalidPasswordFormat(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmailFormat value)? invalidEmailFormat,
    TResult Function(ConfirmPasswordMustMatch value)? confirmPasswordMustMatch,
    TResult Function(InvalidPasswordFormat value)? invalidPasswordFormat,
    required TResult orElse(),
  }) {
    if (invalidPasswordFormat != null) {
      return invalidPasswordFormat(this);
    }
    return orElse();
  }
}

abstract class InvalidPasswordFormat implements UIException {
  const factory InvalidPasswordFormat() = _$InvalidPasswordFormat;
}

/// @nodoc
class _$ValueIsValidTearOff {
  const _$ValueIsValidTearOff();

  ValidValue valueIsValid() {
    return const ValidValue();
  }
}

/// @nodoc
const $ValueIsValid = _$ValueIsValidTearOff();

/// @nodoc
mixin _$ValueIsValid {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() valueIsValid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? valueIsValid,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ValidValue value) valueIsValid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ValidValue value)? valueIsValid,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValueIsValidCopyWith<$Res> {
  factory $ValueIsValidCopyWith(
          ValueIsValid value, $Res Function(ValueIsValid) then) =
      _$ValueIsValidCopyWithImpl<$Res>;
}

/// @nodoc
class _$ValueIsValidCopyWithImpl<$Res> implements $ValueIsValidCopyWith<$Res> {
  _$ValueIsValidCopyWithImpl(this._value, this._then);

  final ValueIsValid _value;
  // ignore: unused_field
  final $Res Function(ValueIsValid) _then;
}

/// @nodoc
abstract class $ValidValueCopyWith<$Res> {
  factory $ValidValueCopyWith(
          ValidValue value, $Res Function(ValidValue) then) =
      _$ValidValueCopyWithImpl<$Res>;
}

/// @nodoc
class _$ValidValueCopyWithImpl<$Res> extends _$ValueIsValidCopyWithImpl<$Res>
    implements $ValidValueCopyWith<$Res> {
  _$ValidValueCopyWithImpl(ValidValue _value, $Res Function(ValidValue) _then)
      : super(_value, (v) => _then(v as ValidValue));

  @override
  ValidValue get _value => super._value as ValidValue;
}

/// @nodoc

class _$ValidValue implements ValidValue {
  const _$ValidValue();

  @override
  String toString() {
    return 'ValueIsValid.valueIsValid()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ValidValue);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() valueIsValid,
  }) {
    return valueIsValid();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? valueIsValid,
    required TResult orElse(),
  }) {
    if (valueIsValid != null) {
      return valueIsValid();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ValidValue value) valueIsValid,
  }) {
    return valueIsValid(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ValidValue value)? valueIsValid,
    required TResult orElse(),
  }) {
    if (valueIsValid != null) {
      return valueIsValid(this);
    }
    return orElse();
  }
}

abstract class ValidValue implements ValueIsValid {
  const factory ValidValue() = _$ValidValue;
}

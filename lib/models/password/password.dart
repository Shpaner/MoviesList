import 'package:freezed_annotation/freezed_annotation.dart';

part 'password.freezed.dart';

@freezed
abstract class Password implements _$Password {
  const factory Password(String value) = _Password;

  const Password._();

  bool isValid() => RegExp("^(?=.*)(?=.{8,})").hasMatch(value);

  bool isSameAs(String compare) => compare == value;

  bool isValidLogin() => value.isNotEmpty;
}
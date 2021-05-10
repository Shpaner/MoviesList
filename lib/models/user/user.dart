import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movies_list_app/models/item/item.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  factory User({
    required final String id,
    required final String email,
  }) = _User;

  const User._();

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

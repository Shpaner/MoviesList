import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:movies_list_app/config/exceptions/exceptions.dart';
import 'package:movies_list_app/config/values/paths.dart';
import 'package:movies_list_app/models/email/email.dart';
import 'package:movies_list_app/models/password/password.dart';
import 'package:movies_list_app/models/user/user.dart';
import 'package:movies_list_app/repositories/authentication.dart';

part 'sign_up_state.dart';
part 'sign_up_cubit.freezed.dart';

class SignUpCubit extends Cubit<SignUpState> {
  final AuthenticationRepository _authRepository;

  SignUpCubit(this._authRepository) : super(SignUpState.init());

  void signUp() async {
    if (state.emailException != const ValueIsValid.valueIsValid()) {
      return emit(state.copyWith(dialogException: state.emailException));
    }
    if (state.passwordException != const ValueIsValid.valueIsValid()) {
      return emit(state.copyWith(dialogException: state.passwordException));
    }

    emit(state.copyWith(isLoading: true));
    final signUpState = await _authRepository.signUp(
      email: state.email.value.trimRight(),
      password: state.password.value,
    );

    emit(signUpState
        .fold((fail) => state.copyWith(dialogException: fail, isLoading: false),
            (success) {
      firebaseCreateUser(success.user!);
      return state.copyWith(signInId: success.user!.uid);
    }));
  }

  void emailChange(String value) {
    emit(state.copyWith(email: Email(value.toLowerCase())));
  }

  void passwordChange(String value) {
    emit(state.copyWith(password: Password(value)));
  }

  void clearExceptionDialog() {
    emit(state.copyWith(dialogException: const ValueIsValid.valueIsValid()));
  }

  void validateEmail() {
    emit(state.copyWith(
      emailException: !state.email.isValid()
          ? const UIException.invalidEmailFormat()
          : const ValueIsValid.valueIsValid(),
    ));
  }

  void validatePassword() {
    emit(state.copyWith(
      passwordException: !state.password.isValid()
          ? const UIException.invalidPasswordFormat()
          : const ValueIsValid.valueIsValid(),
    ));
  }

  Future<void> firebaseCreateUser(firebase_auth.User user) async {
    CollectionReference users =
        FirebaseFirestore.instance.collection(Paths.userPath);

    return await users
        .doc(user.uid)
        .set(User(email: user.email!, id: user.uid).toJson())
        .catchError((e) => print('Failed to add user: $e'));
  }
}

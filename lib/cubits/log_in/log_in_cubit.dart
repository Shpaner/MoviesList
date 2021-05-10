import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movies_list_app/config/exceptions/exceptions.dart';
import 'package:movies_list_app/models/email/email.dart';
import 'package:movies_list_app/models/password/password.dart';
import 'package:movies_list_app/repositories/authentication.dart';

part 'log_in_state.dart';
part 'log_in_cubit.freezed.dart';

class LogInCubit extends Cubit<LogInState> {
  final AuthenticationRepository _authRepository;

  LogInCubit(this._authRepository) : super(LogInState.init());

  Future<void> logIn() async {
    if (state.emailException != const ValueIsValid.valueIsValid()) {
      return emit(state.copyWith(dialogException: state.emailException));
    }
    if (state.passwordException != const ValueIsValid.valueIsValid()) {
      return emit(state.copyWith(dialogException: state.passwordException));
    }
    emit(state.copyWith(isLoading: true));
    final signInState = await _authRepository.logIn(
      email: state.email.value.trimRight(),
      password: state.password.value,
    );
    signInState.fold(
        (fail) => emit(
              state.copyWith(
                dialogException: fail,
                isLoading: false,
                isSuccess: false,
              ),
            ), (success) {
      emit(state.copyWith(isSuccess: true));
    });
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
}

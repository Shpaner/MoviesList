part of 'log_in_cubit.dart';

@freezed
class LogInState with _$LogInState {
  const factory LogInState({
    required Email email,
    required Password password,
    required bool isLoading,
    required bool isSuccess,
    required AppExceptions dialogException,
    required AppExceptions emailException,
    required AppExceptions passwordException,
  }) = _LogInState;

  const LogInState._();

  factory LogInState.init() => const LogInState(
        email: Email(''),
        password: Password(''),
        isLoading: false,
        isSuccess: false,
        dialogException: const ValueIsValid.valueIsValid(),
        emailException: const ValueIsValid.valueIsValid(),
        passwordException: const ValueIsValid.valueIsValid(),
      );
}

part of 'sign_up_cubit.dart';

@freezed
class SignUpState with _$SignUpState {
  const factory SignUpState({
    required Email email,
    required Password password,
    required bool isLoading,
    required String signInId,
    required AppExceptions dialogException,
    required AppExceptions emailException,
    required AppExceptions passwordException,
  }) = _SignUpState;

  const SignUpState._();

  factory SignUpState.init() => const SignUpState(
        email: Email(''),
        password: Password(''),
        isLoading: false,
        dialogException: const ValueIsValid.valueIsValid(),
        emailException: const ValueIsValid.valueIsValid(),
        passwordException: const ValueIsValid.valueIsValid(),
        signInId: '',
      );
}

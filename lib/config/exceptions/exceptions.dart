import 'package:freezed_annotation/freezed_annotation.dart';

part 'exceptions.freezed.dart';

abstract class AppExceptions {}

class UnknownException extends AppExceptions {}

@freezed
class AuthException extends AppExceptions with _$AuthException {
  const factory AuthException.signUpFailure() = SignUpFailure;
  const factory AuthException.logInPasswordFailure() = LogInPasswordFailure;
  const factory AuthException.logInEmailFailure() = LogInEmailFailure;
  const factory AuthException.logOutFailure() = LogOutFailure;
}

@freezed
class UIException extends AppExceptions with _$UIException {
  const factory UIException.invalidEmailFormat() = InvalidEmailFormat;
  const factory UIException.confirmPasswordMustMatch() =
      ConfirmPasswordMustMatch;
  const factory UIException.invalidPasswordFormat() = InvalidPasswordFormat;
}

@freezed
class ValueIsValid extends AppExceptions with _$ValueIsValid {
  const factory ValueIsValid.valueIsValid() = ValidValue;
}

extension ToString on AppExceptions {
  String getString() {
    if (this is AuthException) {
      return (this as AuthException).when(
        signUpFailure: () => 'Sign-up failure',
        logInPasswordFailure: () => 'Password is wrong',
        logInEmailFailure: () => 'Email is not associated with account',
        logOutFailure: () => 'Log out failure',
      );
    } else if (this is UIException) {
      return (this as UIException).when(
        invalidPasswordFormat: () =>
            'Invalid password format, it must be 8 digits long',
        confirmPasswordMustMatch: () => 'Confirm password must match',
        invalidEmailFormat: () => 'Invalid email format',
      );
    } else if (this is ValueIsValid) {
      return (this as ValueIsValid).when(
        valueIsValid: () => 'Valid',
      );
    } else {
      return 'Something went wrong';
    }
  }
}

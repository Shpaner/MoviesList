import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:injectable/injectable.dart';
import 'package:movies_list_app/config/exceptions/exceptions.dart';
import 'package:movies_list_app/extensions/generic_call.dart';
import 'package:movies_list_app/extensions/stream_value.dart';
import 'package:movies_list_app/models/user/user.dart';

@lazySingleton
class AuthenticationRepository {
  final firebase_auth.FirebaseAuth _firebaseAuth =
      firebase_auth.FirebaseAuth.instance;

  StreamValue<bool> _isAuthenticated = StreamValue();
  Stream<bool> get getAuthenticatedStream => _isAuthenticated.getStreamValue;
  bool? get getAuthenticatedState => _isAuthenticated.getLastValue;

  User getUser() => _firebaseAuth.currentUser!.toUser;

  void startAuthenticationListener() {
    _firebaseAuth.authStateChanges().listen(
      (user) {
        _isAuthenticated.setCallback(
          () => print(
            user == null
                ? 'User is not Authenticated'
                : 'User is Authenticated',
          ),
        );
        if (user == null) {
          return _isAuthenticated.setValue(false);
        }
        return _isAuthenticated.setValue(true);
      },
      cancelOnError: false,
    );
  }

  Future<Either<AppExceptions, firebase_auth.UserCredential>> signUp({
    required String email,
    required String password,
  }) {
    return genericCall(() {
      return _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
    }, errorType: const AuthException.signUpFailure());
  }

  Future<Either<AppExceptions, firebase_auth.UserCredential>> logIn({
    required String email,
    required String password,
  }) async {
    try {
      final result = await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return right(result);
    } on firebase_auth.FirebaseAuthException catch (e) {
      print(e.code);
      switch (e.code) {
        case "ERROR_INVALID_EMAIL":
        case "invalid-email":
        case "ERROR_USER_NOT_FOUND":
        case "user-not-found":
          return left(const AuthException.logInEmailFailure());
        case "ERROR_WRONG_PASSWORD":
        case "wrong-password":
          return left(const AuthException.logInPasswordFailure());
        default:
          return left(UnknownException());
      }
    }
  }
}

extension on firebase_auth.User {
  User get toUser {
    return User(id: uid, email: email!);
  }
}

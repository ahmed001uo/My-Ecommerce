import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthBase {
  Future<User?> logainWithEmailAndPassword(String email, String password);
  Future<User?> singUpWithEmailAndPassword(String email, String password);
}

class Auth implements AuthBase {
  final _firebaseAuth = FirebaseAuth.instance;
  @override
  Future<User?> logainWithEmailAndPassword(
      String email, String password) async {
    final userAuth = await _firebaseAuth.signInWithEmailAndPassword(
        email: email, password: password);
    return userAuth.user;
  }

  @override
  Future<User?> singUpWithEmailAndPassword(
      String email, String password) async {
    final userAuth = await _firebaseAuth.createUserWithEmailAndPassword(
        email: email, password: password);
    return userAuth.user;
  }
}

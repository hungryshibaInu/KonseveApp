import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class KonseveFirebaseUser {
  KonseveFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

KonseveFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<KonseveFirebaseUser> konseveFirebaseUserStream() => FirebaseAuth.instance
    .authStateChanges()
    .debounce((user) => user == null && !loggedIn
        ? TimerStream(true, const Duration(seconds: 1))
        : Stream.value(user))
    .map<KonseveFirebaseUser>(
        (user) => currentUser = KonseveFirebaseUser(user));

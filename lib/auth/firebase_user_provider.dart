import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class PefitaGroomerFirebaseUser {
  PefitaGroomerFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

PefitaGroomerFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<PefitaGroomerFirebaseUser> pefitaGroomerFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<PefitaGroomerFirebaseUser>(
            (user) => currentUser = PefitaGroomerFirebaseUser(user));

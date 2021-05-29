import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class KronoxAliadosFirebaseUser {
  KronoxAliadosFirebaseUser(this.user);
  final User user;
  bool get loggedIn => user != null;
}

KronoxAliadosFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<KronoxAliadosFirebaseUser> kronoxAliadosFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<KronoxAliadosFirebaseUser>(
            (user) => currentUser = KronoxAliadosFirebaseUser(user));

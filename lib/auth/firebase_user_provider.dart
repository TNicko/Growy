import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class GrowyFirebaseUser {
  GrowyFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

GrowyFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<GrowyFirebaseUser> growyFirebaseUserStream() => FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<GrowyFirebaseUser>(
      (user) {
        currentUser = GrowyFirebaseUser(user);
        return currentUser!;
      },
    );

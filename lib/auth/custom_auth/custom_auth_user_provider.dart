import 'package:rxdart/rxdart.dart';

import 'custom_auth_manager.dart';

class FrexFinalAuthUser {
  FrexFinalAuthUser({required this.loggedIn, this.uid});

  bool loggedIn;
  String? uid;
}

/// Generates a stream of the authenticated user.
BehaviorSubject<FrexFinalAuthUser> frexFinalAuthUserSubject =
    BehaviorSubject.seeded(FrexFinalAuthUser(loggedIn: false));
Stream<FrexFinalAuthUser> frexFinalAuthUserStream() => frexFinalAuthUserSubject
    .asBroadcastStream()
    .map((user) => currentUser = user);

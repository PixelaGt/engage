import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthService {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn(
      scopes: ['email', 'https://www.googleapis.com/auth/contacts.readonly']);

  Future<FirebaseUser> currentUser() async => await _firebaseAuth.currentUser();

  Future<bool> isUserLoggedIn() async {
    var user = await _firebaseAuth.currentUser();
    return user != null;
  }

  Future<FirebaseUser> loginAnonymously() async {
    try {
      if (!await isUserLoggedIn()) {
        final firebaseAuth = await _firebaseAuth.signInAnonymously();
        return firebaseAuth.user;
      } else {
        return currentUser();
      }
    } catch (e) {
      return null;
    }
  }

  Future<FirebaseUser> loginWithGoogle() async {
    try {
      if (!await isUserLoggedIn()) {
        final googleAccount = await _googleSignIn.signIn();
        final googleAuth = await googleAccount.authentication;
        final googleCredential = GoogleAuthProvider.getCredential(
            idToken: googleAuth.idToken, accessToken: googleAuth.accessToken);
        final firebaseAuth =
            await _firebaseAuth.signInWithCredential(googleCredential);
        return firebaseAuth.user;
      } else {
        return currentUser();
      }
    } catch (e) {
      return null;
    }
  }
}

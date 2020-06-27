import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:engage/src/data/profile.dart';

class FirestoreService {
  final CollectionReference _profilesCollection =
      Firestore.instance.collection('profiles');

  Future<bool> createProfile(Profile profile) async {
    try {
      await _profilesCollection.document(profile.id).setData(profile.toJson());
      return true;
    } catch (e) {
      return false;
    }
  }

  Future<Profile> getProfile(String id) async {
    try {
      final profile = await _profilesCollection.document(id).get();
      return Profile.fromJson(profile.data);
    } catch (e) {
      return null;
    }
  }

  Stream<Profile> profileStream(String id) => _profilesCollection
      .document(id)
      .snapshots()
      .map((result) => Profile.fromJson(result.data));
}

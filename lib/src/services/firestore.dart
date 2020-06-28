import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:engage/src/data/initiative.dart';
import 'package:engage/src/data/profile.dart';

class FirestoreService {
  final CollectionReference _profilesCollection =
      Firestore.instance.collection('profiles');

  final CollectionReference _initiativesCollection =
      Firestore.instance.collection('initiatives');

  Future<bool> createInitiative(Initiative initiative) async {
    try {
      await _initiativesCollection.add(initiative.toJson());
      return true;
    } catch (e) {
      return false;
    }
  }

  Future<bool> createProfile(Profile profile) async {
    try {
      await _profilesCollection.document(profile.id).setData(profile.toJson());
      return true;
    } catch (e) {
      return false;
    }
  }

  Future<List<Initiative>> getInitiatives() async {
    try {
      final initiatives = await _initiativesCollection.getDocuments();
      return initiatives.documents
          .map((e) => Initiative.fromJson(e.data))
          .toList();
    } catch (e) {
      return [];
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

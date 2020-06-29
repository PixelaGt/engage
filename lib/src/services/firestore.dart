import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:engage/src/data/initiative.dart';
import 'package:engage/src/data/profile.dart';
import 'package:engage/src/data/transfer.dart';

class FirestoreService {
  final CollectionReference _profilesCollection =
      Firestore.instance.collection('profiles');

  final CollectionReference _initiativesCollection =
      Firestore.instance.collection('initiatives');

  final CollectionReference _transfersCollection =
      Firestore.instance.collection('transfers');

  Future<bool> createInitiative(Initiative initiative, Profile profile) async {
    try {
      final result = await _initiativesCollection.add(initiative.toJson());

      await _profilesCollection.document(profile.id).setData(
          profile.copyWith.call(units: profile.units - 120000).toJson(),
          merge: true);

      await _initiativesCollection
          .document(result.documentID)
          .setData({'id': result.documentID}, merge: true);
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

  Future<bool> supportInitiative(
      Initiative initiative, int credits, Profile profile) async {
    try {
      initiative.supporters.contains(profile.id);

      final updatedInitiative = initiative.copyWith.call(
          support: initiative.support + credits,
          supporters: initiative.supporters.contains(profile.id)
              ? initiative.supporters
              : List.from(initiative.supporters)
            ..add(profile.id));

      await _profilesCollection.document(profile.id).setData(
          profile.copyWith.call(units: profile.units - credits).toJson(),
          merge: true);

      await _initiativesCollection
          .document(initiative.id)
          .setData(updatedInitiative.toJson(), merge: true);

      await _transfersCollection.add(Transfer(
              credits: credits,
              initiativeId: initiative.id,
              initiativeName: initiative.name ?? '',
              profileId: profile.id)
          .toJson());

      return true;
    } catch (e) {
      return false;
    }
  }

  Future<bool> addCredits(Profile profile, int credits) async {
    try {
      await _profilesCollection.document(profile.id).setData(
          profile.copyWith.call(units: profile.units + credits).toJson(),
          merge: true);
      return true;
    } catch (e) {
      return false;
    }
  }

  Future<bool> updateInitiativeStatus(
      Initiative initiative, String status) async {
    try {
      await _initiativesCollection.document(initiative.id).setData(
          initiative.copyWith.call(status: status).toJson(),
          merge: true);
      return true;
    } catch (e) {
      return false;
    }
  }

  Stream<List<Initiative>> myInitiatives(String id) => _initiativesCollection
      .where('ownerId', isEqualTo: id)
      .where('status', isEqualTo: 'created')
      .snapshots()
      .map((snapshots) =>
          snapshots.documents.map((e) => Initiative.fromJson(e.data)).toList());

  Stream<List<Initiative>> supportedInitiatives(
          String id) =>
      _initiativesCollection
          .where('supporters', arrayContains: id)
          .snapshots()
          .map((snapshots) => snapshots.documents
              .map((e) => Initiative.fromJson(e.data))
              .toList());

  Stream<List<Transfer>> getTransfers(String id) => _transfersCollection
      .where('profileId', isEqualTo: id)
      .snapshots()
      .map((snapshot) =>
          snapshot.documents.map((e) => Transfer.fromJson(e.data)).toList());

  Stream<List<Initiative>> initiativesStream() => _initiativesCollection
      .where('status', isEqualTo: 'created')
      .snapshots()
      .map((result) => result.documents
          .map((e) => Initiative.fromJson(e.data))
          .toList()
          .where((element) => element.support < element.goal)
          .toList());

  Stream<Profile> profileStream(String id) => _profilesCollection
      .document(id)
      .snapshots()
      .map((result) => Profile.fromJson(result.data));
}

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:crud_firebase/team.dart';

class FirestoreService {
  static final FirestoreService _instance = FirestoreService._internal();
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  factory FirestoreService() {
    return _instance;
  }

  FirestoreService._internal();

  Future<void> agregarDatos(String collection, Map<String, dynamic> data) {
    return _firestore.collection(collection).add(data);
  }

  Stream<List<Team>> leerDatos(String collection) {
    return _firestore.collection(collection).snapshots().map((snapshot) {
      return snapshot.docs.map((doc) => Team.fromDocumentSnapshot(doc)).toList();
    });
  }

  Future<void> actualizarDatos(String collection, String docId, Map<String, dynamic> data) {
    return _firestore.collection(collection).doc(docId).update(data);
  }

  Future<void> eliminarDatos(String collection, String docId) {
    return _firestore.collection(collection).doc(docId).delete();
  }
}
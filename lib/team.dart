import 'package:cloud_firestore/cloud_firestore.dart';

class Team {
  final String id;
  final String conferencia;
  final String division;
  final String nombre;

  Team({required this.id, required this.conferencia, required this.division, required this.nombre});

  // Convertir un Team a un Map
  Map<String, dynamic> toMap() {
    return {
      'conferencia': conferencia,
      'division': division,
      'nombre': nombre,
    };
  }

  // Crear un Team desde un DocumentSnapshot
  factory Team.fromDocumentSnapshot(DocumentSnapshot doc) {
    return Team(
      id: doc.id,
      conferencia: doc['conferencia'],
      division: doc['division'],
      nombre: doc['nombre'],
    );
  }
}


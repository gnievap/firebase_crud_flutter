import 'package:crud_firebase/firestore_service.dart';
import 'package:crud_firebase/team.dart';
import 'package:flutter/material.dart';

class TeamScreen extends StatefulWidget {
  const TeamScreen({super.key});

  @override
  _TeamScreenState createState() => _TeamScreenState();
}

class _TeamScreenState extends State<TeamScreen> {
  final FirestoreService _firestoreService = FirestoreService();
  final TextEditingController _conferenciaController = TextEditingController();
  final TextEditingController _divisionController = TextEditingController();
  final TextEditingController _nombreController = TextEditingController();

  void _agregarEquipo() {
    _firestoreService.agregarDatos('teams', {
      'conferencia': _conferenciaController.text,
      'division': _divisionController.text,
      'nombre': _nombreController.text,
    });
    _conferenciaController.clear();
    _divisionController.clear();
    _nombreController.clear();
  }

  void _actualizarEquipo(String docId) {
    _firestoreService.actualizarDatos('teams', docId, {
      'conferencia': _conferenciaController.text,
      'division': _divisionController.text,
      'nombre': _nombreController.text,
    });
    _conferenciaController.clear();
    _divisionController.clear();
    _nombreController.clear();
  }

  void _eliminarEquipo(String docId) {
    _firestoreService.eliminarDatos('teams', docId);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Firebase CRUD'),
      ),
      body: Column(
        children: [
          TextField(
            controller: _conferenciaController,
            decoration: const InputDecoration(labelText: 'Conferencia'),
          ),
          TextField(
            controller: _divisionController,
            decoration: const InputDecoration(labelText: 'División'),
          ),
          TextField(
            controller: _nombreController,
            decoration: const InputDecoration(labelText: 'Nombre'),
          ),
          ElevatedButton(
            onPressed: _agregarEquipo,
            child: const Text('Agregar Equipo'),
          ),
          Expanded(
            child: StreamBuilder(
              stream: _firestoreService.leerDatos('teams'),
              builder: (context, AsyncSnapshot<List<Team>> snapshot) {
                if (snapshot.hasError) {
                  return Text('Error: ${snapshot.error}');
                }

                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const CircularProgressIndicator();
                }

                return ListView(
                  children: snapshot.data!.map((Team team) {
                    return ListTile(
                      title: Text(team.nombre),
                      subtitle: Text('Conferencia: ${team.conferencia}, División: ${team.division}'),
                      onTap: () {
                        _conferenciaController.text = team.conferencia;
                        _divisionController.text = team.division;
                        _nombreController.text = team.nombre;
                        _actualizarEquipo(team.id);
                      },
                      trailing: IconButton(
                        icon: const Icon(Icons.delete),
                        onPressed: () {
                          _eliminarEquipo(team.id);
                        },
                      ),
                    );
                  }).toList(),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
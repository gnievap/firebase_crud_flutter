import 'package:crud_firebase/team_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'NFL Teams - Flutter Firebase CRUD',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const TeamScreen(),
    );
  }
}

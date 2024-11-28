import 'package:challenger/components/character.dart';
import 'package:challenger/data/character_inherited.dart';
import 'package:challenger/screens/character_screen.dart';
import 'package:challenger/screens/form_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.blue),
        home: CharacterInherited(child: const CharacterScreen()));
  }
}

import 'package:challenger/components/character.dart';
import 'package:challenger/screens/CharacterScreen.dart';
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
        title: 'Semana 19 e 20',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: CharacterScreen());
  }
}

import 'package:challenger/components/character.dart';
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

class CharacterScreen extends StatefulWidget {
  const CharacterScreen();

  @override
  _CharacterScreenState createState() => _CharacterScreenState();
}

class _CharacterScreenState extends State<CharacterScreen> {
  // Pontos de vida do personagem

  // Função para incrementar os pontos de vida

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter semana 19 e 20'),
      ),
      body: ListView(
        children: [
          Character("Aragon", "humano"),
          Character("Aragon", "humano"),
        ],
      ),
    );
  }
}

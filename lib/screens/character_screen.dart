import 'package:challenger/components/character.dart';
import 'package:challenger/data/character_inherited.dart';
import 'package:challenger/screens/form_screen.dart';
import 'package:flutter/material.dart';

class CharacterScreen extends StatefulWidget {
  const CharacterScreen({super.key});

  @override
  State<CharacterScreen> createState() => _CharacterScreenState();
}

class _CharacterScreenState extends State<CharacterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Personagens Sonic'),
          leading: const Icon(Icons.add_task),
        ),
        body: Container(
          child: ListView(
            children: CharacterInherited.of(context)!.characterList,
            padding: EdgeInsets.only(top: 8, bottom: 70),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          heroTag: null,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (contextNew) => FormScreen(characterContext: context),
              ),
            );
          },
          child: const Icon(Icons.add),
        ));
  }
}

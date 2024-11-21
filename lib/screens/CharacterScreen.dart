import 'package:challenger/components/character.dart';
import 'package:flutter/material.dart';

class CharacterScreen extends StatefulWidget {
  const CharacterScreen({super.key});

  @override
  State<CharacterScreen> createState() => _CharacterScreenState();
}

class _CharacterScreenState extends State<CharacterScreen> {
  @override
  bool opacidade = true;
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter semana 19 e 20'),
        ),
        body: AnimatedOpacity(
          opacity: opacidade ? 1 : 0,
          duration: const Duration(seconds: 1),
          child: ListView(
            children: [
              Character("Sonic", "Ouriço",
                  "https://images.gamebanana.com/img/ss/concepts/65dc33b363110.jpg"),
              Character("Shadow", "Ouriço",
                  "https://i.pinimg.com/736x/14/37/4f/14374f6454e77e82c48051a3bb61dd9c.jpg"),
              Character("Amy", "Ouriço",
                  "https://i.pinimg.com/originals/27/8c/64/278c64865990c41a1339b07ded92daa8.jpg"),
              Character("Tails", "Raposa",
                  "https://i.pinimg.com/474x/0f/a0/1a/0fa01a092f79397a7527f3ecae9c8640.jpg"),
              Character("Blaze", "Ouriço",
                  "https://preview.redd.it/lc5kap16hoxb1.jpg?auto=webp&s=73f6748d9545faba08fec4813b9d2ddb03951c67"),
              Character("Jet", "Ouriço",
                  "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/b8919e7a-2bb5-40c7-af15-8218d853bd92/d4pkl57-24716206-3024-4244-a279-404235e2b127.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcL2I4OTE5ZTdhLTJiYjUtNDBjNy1hZjE1LTgyMThkODUzYmQ5MlwvZDRwa2w1Ny0yNDcxNjIwNi0zMDI0LTQyNDQtYTI3OS00MDQyMzVlMmIxMjcucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.zcbs3V5Rw_41CapTBWBUEQzzLIwjJy7Cj0mA3f0smmY"),
              SizedBox(
                height: 80,
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              opacidade = !opacidade;
            });
          },
          child: const Icon(Icons.remove_red_eye),
        ));
  }
}

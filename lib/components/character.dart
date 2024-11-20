import 'package:flutter/material.dart';

class Character extends StatefulWidget {
  final String name;
  final String race;
  const Character(this.name, this.race, {super.key});

  @override
  State<Character> createState() => _CharacterState();
}

class _CharacterState extends State<Character> {
  int lifePoints = 100;
  void incrementLife() {
    setState(() {
      this.lifePoints += 10;
    });
  }

  // Função para decrementar os pontos de vida
  void decrementLife() {
    setState(() {
      if (lifePoints > 0) {
        this.lifePoints -= 10;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Nome: ${widget.name}",
                style: TextStyle(fontSize: 24),
              ),
              Text(
                'Vida: ${this.lifePoints}',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Raça: ${widget.race}',
                style: TextStyle(fontSize: 24),
              ),
              Row(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      FloatingActionButton(
                        onPressed: decrementLife,
                        tooltip: 'Decrementar Vida',
                        child: Icon(Icons.remove),
                      ),
                      SizedBox(width: 10),
                      FloatingActionButton(
                        onPressed: incrementLife,
                        tooltip: 'Incrementar Vida',
                        child: Icon(Icons.add),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}

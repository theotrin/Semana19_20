import 'package:flutter/material.dart';

class Character extends StatefulWidget {
  final String name;
  final String race;
  final String imgUrl;
  const Character(this.name, this.race, this.imgUrl, {super.key});

  @override
  State<Character> createState() => _CharacterState();
}

class _CharacterState extends State<Character> {
  int speedPoints = 100;

  void incrementLife() {
    setState(() {
      speedPoints += 10;
    });
  }

  void decrementSpeed() {
    setState(() {
      if (speedPoints > 0) {
        speedPoints -= 10;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 200,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(9), color: Colors.blue),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Stack(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          ClipRRect(
                            child: Container(
                              width: 80,
                              height: 80,
                              child: Image.network(
                                widget.imgUrl,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Nome: ${widget.name}',
                                  style: const TextStyle(fontSize: 22),
                                ),
                                Text(
                                  'Tipo: ${widget.race}',
                                  style: const TextStyle(fontSize: 22),
                                ),
                                Text(
                                  'Velocidade: $speedPoints',
                                  style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          FloatingActionButton(
                            onPressed: decrementSpeed,
                            tooltip: 'Decrementar Vida',
                            child: const Icon(Icons.remove),
                          ),
                          const SizedBox(width: 8),
                          FloatingActionButton(
                            onPressed: incrementLife,
                            tooltip: 'Incrementar Vida',
                            child: const Icon(Icons.add),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

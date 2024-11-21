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
  int lifePoints = 100;

  void incrementLife() {
    setState(() {
      this.lifePoints += 10;
    });
  }

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
                      SizedBox(
                        width: 80,
                        height: 80,
                        child: Image.network(
                          widget.imgUrl,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(
                          width: 20), // Espaçamento entre a imagem e o texto
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Nome: ${widget.name}",
                            style: TextStyle(fontSize: 22),
                          ),
                          const SizedBox(
                              height: 10), // Espaçamento entre os textos
                          Text(
                            'Raça: ${widget.race}',
                            style: TextStyle(fontSize: 22),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              Positioned(
                bottom: 20,
                right: 20,
                child: Text(
                  'Vida: ${this.lifePoints}',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
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
              ),
            ],
          )
        ],
      ),
    );
  }
}

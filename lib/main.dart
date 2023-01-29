import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyFlipCard());
}

class MyFlipCard extends StatefulWidget {
  const MyFlipCard({super.key});

  @override
  State<MyFlipCard> createState() => _MyFlipCardState();
}

class _MyFlipCardState extends State<MyFlipCard> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Flip Card"),
        ),
        body: Stack(
          children: [
            Positioned(
              top: 10,
              left: 30,
              child: FlipCard(
                direction: FlipDirection.VERTICAL,
                front: Transform.rotate(
                  angle: 0.05,
                  child: Container(
                    alignment: Alignment.center,
                    width: 200,
                    height: 100,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.blueGrey,
                      ),
                      color: Colors.blueGrey,
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                    child: const Text("Front"),
                  ),
                ),
                back: Transform.rotate(
                  angle: 0.05,
                  child: Container(
                    alignment: Alignment.center,
                    width: 200,
                    height: 100,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.teal,
                      ),
                      color: Colors.teal,
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                    child: const Text("Back"),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 25,
              left: 20,
              child: FlipCard(
                direction: FlipDirection.VERTICAL,
                front: Transform.rotate(
                  angle: -0.07,
                  child: Container(
                    alignment: Alignment.center,
                    width: 200,
                    height: 100,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.amber,
                      ),
                      color: Colors.amber,
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                    child: const Text("Front"),
                  ),
                ),
                back: Transform.rotate(
                  angle: -0.05,
                  child: Container(
                    alignment: Alignment.center,
                    width: 200,
                    height: 100,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.orange,
                      ),
                      color: Colors.orange,
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                    child: const Text("Back"),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 25,
              left: 40,
              child: FlipCard(
                direction: FlipDirection.VERTICAL,
                front: Transform.rotate(
                  angle: 0.1,
                  child: Container(
                    alignment: Alignment.center,
                    width: 200,
                    height: 100,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.red,
                      ),
                      color: Colors.red,
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                    child: const Text("Front"),
                  ),
                ),
                back: Transform.rotate(
                  angle: 0.05,
                  child: Container(
                    alignment: Alignment.center,
                    width: 200,
                    height: 100,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.lightBlue,
                      ),
                      color: Colors.lightBlue,
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                    child: const Text("Back"),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

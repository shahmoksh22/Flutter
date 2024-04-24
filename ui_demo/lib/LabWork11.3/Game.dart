import 'package:flutter/material.dart';
import 'dart:math';
import 'dart:async';

void main() => runApp(MaterialApp(home: DotCatcherGame()));

class DotCatcherGame extends StatefulWidget {
  @override
  _DotCatcherGameState createState() => _DotCatcherGameState();
}

class _DotCatcherGameState extends State<DotCatcherGame> {
  List<Dot> dots = [];
  final random = Random();
  Timer? dotTimer;
  Timer? interactionTimer;
  int score = 0;
  bool gameOver = false;

  @override
  void initState() {
    super.initState();
    dotTimer = Timer.periodic(Duration(seconds: 2), (timer) => _addDot());
    _resetInteractionTimer();
  }

  @override
  void dispose() {
    dotTimer?.cancel();
    interactionTimer?.cancel();
    super.dispose();
  }

  void _addDot() {
    final position = Offset(random.nextDouble() * MediaQuery.of(context).size.width,
        random.nextDouble() * MediaQuery.of(context).size.height);
    final size = random.nextDouble() * 20 + 10; // Random size between 10 and 30
    setState(() {
      dots.add(Dot(position, size));
    });
  }

  void _resetInteractionTimer() {
    interactionTimer?.cancel();
    interactionTimer = Timer(Duration(seconds: 3), _endGame);
  }

  void _catchDot(int index) {
    setState(() {
      dots.removeAt(index);
      score++;
      _resetInteractionTimer(); // Reset the timer on every successful tap
    });
  }

  void _endGame() {
    setState(() {
      gameOver = true;
      dotTimer?.cancel();
      interactionTimer?.cancel();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: gameOver
          ? Center(child: Text("Game Over! Your score: $score", style: TextStyle(fontSize: 24)))
          : GestureDetector(
        onTap: () {
          if (gameOver) {
            setState(() {
              gameOver = false;
              score = 0;
              dots.clear();
              dotTimer = Timer.periodic(Duration(seconds: 2), (timer) => _addDot());
              _resetInteractionTimer();
            });
          }
        },
        child: Stack(
          children: [
            ...List.generate(dots.length, (index) {
              final dot = dots[index];
              return Positioned(
                left: dot.position.dx,
                top: dot.position.dy,
                child: GestureDetector(
                  onTap: () => _catchDot(index),
                  child: Transform.scale(
                    scale: dot.size / 20,
                    child: Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                ),
              );
            }),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text("Score: $score"),
        actions: [
          if (!gameOver)
            IconButton(
              icon: Icon(Icons.refresh),
              onPressed: _endGame,
            ),
        ],
      ),
    );
  }
}

class Dot {
  Offset position;
  double size;

  Dot(this.position, this.size);
}

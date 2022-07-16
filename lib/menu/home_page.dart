import 'dart:math';
import 'package:flutter/material.dart';
import 'package:confetti/confetti.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ConfettiController _controller = ConfettiController(
      duration: const Duration(seconds: 15));

  @override
  void initState() {
    super.initState();
    _controller.play();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 174, 190, 191),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 174, 190, 191),
        title: const Text('Home',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 1, 97,112)
          ))),
      body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Align(
                  alignment: Alignment.topCenter,
                  child: ConfettiWidget(
                      confettiController: _controller,
                      blastDirectionality: BlastDirectionality.explosive,
                      emissionFrequency: 0.2,
                      gravity: 0.05,
                      shouldLoop: false)),
                ConfettiWidget(
                    confettiController: _controller,
                    blastDirectionality: BlastDirectionality.explosive,
                    emissionFrequency: 0.25,
                    shouldLoop: false),
                const Padding(
                  padding: EdgeInsets.all(15),
                  child: Text('의진아~',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30))),
                Padding(
                    padding: const EdgeInsets.all(50),
                    child: ClipRRect( borderRadius: BorderRadius.circular(30.0),
                        child: Image.asset('./assets/profile_kug.jpeg', height: 250, width: 250))),
                const Padding(
                  padding: EdgeInsets.all(15),
                  child: Text('\u{1F386} 생일 축하해! \u{1F386}',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30))),
              ])))
    );
  }
}

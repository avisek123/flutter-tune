import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:audioplayers/audioplayers.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SafeArea(
          child: Scaffold(
            // appBar: AppBar(
            //   title: const Text('Ask Me Anything'),
            //   backgroundColor: Colors.black,
            // ),
            backgroundColor: Colors.white,
            body: Xylophone(),
          ),
        ));
  }
}

class Xylophone extends StatefulWidget {
  const Xylophone({super.key});

  @override
  State<Xylophone> createState() => _XylophoneState();
}

void play_Sound(sound) {
  final player = AudioPlayer();
  player.play(AssetSource(sound));
}

class _XylophoneState extends State<Xylophone> {
  Expanded buildExpanded(String sound, Color color) {
    return Expanded(
        child: TextButton(
            style: TextButton.styleFrom(
              backgroundColor: color,
            ),
            onPressed: () {
              play_Sound(sound);
            },
            child: Text('')));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        buildExpanded('assets/note1.wav', Colors.red),
        buildExpanded('assets/note2.wav', Colors.orange),
        buildExpanded('assets/note3.wav', Colors.yellow),
        buildExpanded('assets/note4.wav', Colors.green),
        buildExpanded('assets/note5.wav', Colors.teal),
        buildExpanded('assets/note6.wav', Colors.blue),
        buildExpanded('assets/note7.wav', Colors.purple),
      ],
    );
  }
}

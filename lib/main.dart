import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
// import 'package:audioplayers_platform_interface/audioplayers_platform_interface.dart';

void main() => runApp(const XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  void playSound(int soundNumber) async {
    final player = AudioPlayer();
    await player.play(AssetSource('note$soundNumber.wav'));
  }

  Widget buildKey(int num, Color col) {
    return Expanded(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: col),
        onPressed: () async {
          playSound(num);
        },
        child: const Text(' '),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(1, Colors.redAccent),
              buildKey(2, Colors.orangeAccent),
              buildKey(3, Colors.yellowAccent),
              buildKey(4, Colors.greenAccent),
              buildKey(5, Colors.blueAccent),
              buildKey(6, Colors.indigoAccent),
              buildKey(7, Colors.purpleAccent),
            ],
          ),
        ),
      ),
    );
  }
}

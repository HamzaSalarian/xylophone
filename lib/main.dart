import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playNote(int num) {
    final assetsAudioPlayer = AssetsAudioPlayer();

    assetsAudioPlayer.open(
      Audio("assets/note$num.wav"),
    );
  }

  Expanded buildKey({required Color color, required int num}) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: color,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
        ),
        child: Container(),
        onPressed: () {
          playNote(num);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buildKey(color: Colors.red, num: 1),
                buildKey(color: Colors.orange, num: 2),
                buildKey(color: Colors.yellow, num: 3),
                buildKey(color: Colors.green, num: 4),
                buildKey(color: Colors.blue, num: 5),
                buildKey(color: Colors.indigo, num: 6),
                buildKey(color: Colors.purple, num: 7),
              ]),
        ),
      ),
    );
  }
}

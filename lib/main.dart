import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(child: XylophonePage()),
      ),
    ),
  );
}

class XylophonePage extends StatefulWidget {
  @override
  _XylophonePage createState() => _XylophonePage();
}

class _XylophonePage extends State<XylophonePage> {
  static AudioCache player = AudioCache();

  void playingXylo(int sound) => {
        setState(() => {playLocal('/note$sound.wav')})
      };

  playLocal(String sound) async {
    player.play(sound);
  }

  Expanded buildKey({required Color color, required int sound}) {
    return Expanded(
      child: InkWell(
        //alternativ Flatbutton
        child: Container(color: color),
        onTap: () => {playingXylo(sound)},
      ),
      flex: 1,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            buildKey(color: Colors.red, sound: 1),
            buildKey(color: Colors.orange, sound: 2),
            buildKey(color: Colors.yellow, sound: 3),
            buildKey(color: Colors.green, sound: 4),
            buildKey(color: Colors.teal, sound: 5),
            buildKey(color: Colors.blue, sound: 6),
            buildKey(color: Colors.purple, sound: 7),
          ],
        ),
      ),
    );
  }
}

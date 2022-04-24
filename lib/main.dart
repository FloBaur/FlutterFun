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

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: InkWell(
                child: Container(
                  decoration: const BoxDecoration(color: Colors.red),
                ),
                onTap: () => {playingXylo(1)},
              ),
              flex: 1,
            ),
            Expanded(
              child: InkWell(
                child: Container(
                  decoration: const BoxDecoration(color: Colors.orange),
                ),
                onTap: () => {playingXylo(2)},
              ),
              flex: 1,
            ),
            Expanded(
              child: InkWell(
                child: Container(
                  decoration: const BoxDecoration(color: Colors.yellow),
                ),
                onTap: () => {playingXylo(3)},
              ),
              flex: 1,
            ),
            Expanded(
              child: InkWell(
                child: Container(
                  decoration: const BoxDecoration(color: Colors.green),
                ),
                onTap: () => {playingXylo(4)},
              ),
              flex: 1,
            ),
            Expanded(
              child: InkWell(
                child: Container(
                  color: Colors.green.shade700,
                ),
                onTap: () => {playingXylo(5)},
              ),
              flex: 1,
            ),
            Expanded(
              child: InkWell(
                child: Container(
                  color: Colors.blue,
                ),
                onTap: () => {playingXylo(6)},
              ),
              flex: 1,
            ),
            Expanded(
              child: InkWell(
                child: Container(
                  color: Colors.purple,
                ),
                onTap: () => {playingXylo(7)},
              ),
              flex: 1,
            )
          ],
        ),
      ),
    );
  }
}

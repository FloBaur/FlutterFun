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
  String sound = '';

  void playingXylo(String sound) => {
        setState(() => {playLocal(sound)})
      };



  playLocal(String sound) async {
    player.play(sound);
    print('ich bin hier' + '  $sound');
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
                onTap: () => {sound = '/note1.wav', playingXylo(sound)},
              ),
              flex: 1,
            ),
            Expanded(
              child: InkWell(
                child: Container(
                  decoration: const BoxDecoration(color: Colors.orange),
                ),
                onTap: () => {sound = '/note2.wav', playingXylo(sound)},
              ),
              flex: 1,
            ),
            Expanded(
              child: InkWell(
                child: Container(
                  decoration: const BoxDecoration(color: Colors.yellow),
                ),
                onTap: () => {sound = '/note3.wav', playingXylo(sound)},
              ),
              flex: 1,
            ),
            Expanded(
              child: InkWell(
                child: Container(
                  decoration: const BoxDecoration(color: Colors.green),
                ),
                onTap: () => {sound = '/note4.wav', playingXylo(sound)},
              ),
              flex: 1,
            ),
            Expanded(
              child: InkWell(
                child: Container(
                  color: Colors.green.shade700,
                ),
                onTap: () => {sound = '/note5.wav', playingXylo(sound)},
              ),
              flex: 1,
            ),
            Expanded(
              child: InkWell(
                child: Container(
                  color: Colors.blue,
                ),
                onTap: () => {sound = '/note6.wav', playingXylo(sound)},
              ),
              flex: 1,
            ),
            Expanded(
              child: InkWell(
                child: Container(
                  color: Colors.purple,
                ),
                onTap: () => {sound = '/note7.wav', playingXylo(sound)},
              ),
              flex: 1,
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(MusicPlay());
}

AudioPlayer audio = AudioPlayer();

class MusicPlay extends StatelessWidget {
  Widget PlayMusic(Color color, int tone, String txt) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          audio.play('assets/note$tone.wav');
        },
        child: Center(
          child: Text(
            txt,
            style: const TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.cyan,
          title: Text('Music App'),
          centerTitle: true,
        ),
        body: SafeArea(
            child: Column(
          children: [
            PlayMusic(Colors.blue, 1, 'Sa'),
            PlayMusic(Colors.yellow, 2, 'Re'),
            PlayMusic(Colors.purple, 3, 'Ga'),
            PlayMusic(Colors.pink, 4, 'Ma'),
            PlayMusic(Colors.green, 5, 'Pa'),
            PlayMusic(Colors.grey, 6, 'Dha'),
            PlayMusic(Colors.red, 7, 'Ni'),
          ],
        )),
      ),
    );
  }
}

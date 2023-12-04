import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(Player());

class Player extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildTextButton(1, Colors.white),
              buildTextButton(2, Colors.yellow),
              buildTextButton(3, Colors.orange),
              buildTextButton(4, Colors.red),
              buildTextButton(5, Colors.purple),
              buildTextButton(6, Colors.deepPurple),
              buildTextButton(7, Colors.blueAccent),
            ], // Column children
          ),
        ),
      ),
    );
  }

  void PlayTone(int tone){
    final player = AudioPlayer();
    player.play(AssetSource('note$tone.wav'));
  }
  Expanded buildTextButton(int tone, Color color) {
    return Expanded(
      child: TextButton(
                  onPressed: (){
                    PlayTone(tone);
                  },
                  child: Text(' '),
                style: TextButton.styleFrom(
                  backgroundColor: color,
                ),
              ),
    );
  }
}

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(Xylophone());

class Xylophone extends StatelessWidget {
  final player = AudioCache();

  void playSound(String fileName) => player.play(fileName);

  TextButton getTextButton({String fileName, Color color}) {
    return TextButton(
      style: TextButton.styleFrom(backgroundColor: color),
      onPressed: () {
        playSound(fileName);
      },
      child: null,
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Xylophone'),
          backgroundColor: Colors.blueAccent,
        ),
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child:
                      getTextButton(fileName: 'note1.wav', color: Colors.red),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5.0),
                    child: getTextButton(
                        fileName: 'note2.wav', color: Colors.orange),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: getTextButton(
                        fileName: 'note3.wav', color: Colors.yellow),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: getTextButton(
                        fileName: 'note4.wav', color: Colors.green),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: getTextButton(
                        fileName: 'note5.wav', color: Colors.teal),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: getTextButton(
                        fileName: 'note6.wav', color: Colors.blue),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: getTextButton(
                        fileName: 'note7.wav', color: Colors.purple),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

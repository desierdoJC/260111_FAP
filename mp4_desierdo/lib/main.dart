import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(mp4_desierdo());
}

class mp4_desierdo extends StatelessWidget {

  void playSound(int soundNumber){
    final player = AudioPlayer();
    player.play(AssetSource('note$soundNumber.wav'));
  }

  Expanded buildkey({required MaterialColor color, required int soundNumber, required String note}) {
    return Expanded(
      child: Container(
        height: 150.0,
        decoration: BoxDecoration(
          border: Border.all(width: 1.9, color: Colors.black),
          borderRadius: BorderRadius.all(Radius.circular(5)),
        ),
        child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: color,
          ),
          onPressed: () {
            playSound(soundNumber);
          },
          child: Text(note,
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'OpenSans',
          ),),
        ),
      ),);
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueAccent,
        body: SafeArea(
          child: Center(
            child: Column(
              children: <Widget>[

                Container(
                  height: 100,
                  width:160,
                  margin: const EdgeInsets.all(100),
                  padding: const EdgeInsets.all(17),
                  decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.black),
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                  child: Center(
                    child: Text('Mini-Piano App    '
                        'By: Christian Desierdo',
                        style: TextStyle(
                          fontFamily: 'OpenSans',
                          fontSize: 16,
                        )),
                  ),
                ),

                Container(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                      children: <Widget>[
                      buildkey(color: Colors.red, soundNumber: 1, note: "Do"),
                      buildkey(color: Colors.orange, soundNumber: 2, note: "Re"),
                      buildkey(color: Colors.yellow, soundNumber: 3, note: "Mi"),
                      buildkey(color: Colors.green, soundNumber: 4, note: "Fa"),
                      buildkey(color: Colors.teal, soundNumber: 5, note: "Sol"),
                      buildkey(color: Colors.blue, soundNumber: 6, note: "La"),
                      buildkey(color: Colors.purple, soundNumber: 7, note: "Ti"),
                      buildkey(color: Colors.cyan, soundNumber: 8, note:"Do"),
                                      ]
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
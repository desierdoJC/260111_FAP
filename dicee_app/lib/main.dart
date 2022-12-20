import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.blue,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {

  int foodNum = 1;
  int drinkNum = 1;

  void changeDiceFace(){
    setState((){
      foodNum = Random().nextInt(5) + 1;
      drinkNum = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Meal Randomizer',
              style: TextStyle(
                fontFamily: 'Dangrek',
                fontSize: 35.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              )),
          Text('Choose what food and drink to eat randomly',
              style: TextStyle(
                fontFamily: 'Dangrek',
                fontSize: 20,
                color: Colors.white,
              )),
          Row(
            children: <Widget>[
              Expanded(
                    child:Image.asset('images/food$foodNum.png', height:200)),
              Expanded(
                  child: Image.asset('images/drink$drinkNum.png', height:200),
              ),

            ]
          ),
          TextButton(
            child: Card(color: Colors.white,
               margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 73.0),
              child: ListTile(
              title: Text('Press Me To Randomize',
              style: TextStyle(
                color: Colors.blue,
                fontFamily:'Dangrek',
                fontSize:20,
              ),)
              )
            ),
            onPressed: (){
              changeDiceFace();
            },
          ),
        ],
      ),
    );
  }
}


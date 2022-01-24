// ignore_for_file: deprecated_member_use
import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.yellowAccent,
      appBar: AppBar(
        backgroundColor: Colors.tealAccent,
        title: const Text(
          "Dice App 🎲",
          style: TextStyle(color: Colors.black, fontSize: 23),
        ),
      ),
      body: const MyHome(),
    ),
  ));
}

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}
class _MyHomeState extends State<MyHome> {
  var DiceChanger=1;
  var DiceChangerLeft=1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  DiceChangerLeft=Random().nextInt(6)+1;
                  print('Clik Left = $DiceChangerLeft');
                });
              },
              child: Image.asset(
                'Image/dice$DiceChangerLeft.png',
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: FlatButton(
                onPressed: () {
                  setState(() {
                    DiceChanger=Random().nextInt(6)+1;
                    print('Click Right = $DiceChanger');
                  });
                },
                child: Image.asset(
                  'Image/dice$DiceChanger.png',
                  color: Colors.black,
                )
            ),
          ),
        ],
      ),
    );
  }
}

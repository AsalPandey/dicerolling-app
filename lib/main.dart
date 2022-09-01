import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.red,
          appBar: AppBar(
            title: Text('hii doug'),
            titleSpacing: 150,
            backgroundColor: Colors.greenAccent,
          ),
          body: DicePage()),
    ),
  );
}

int ldn = 1;
int rdn = 1;

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
                onPressed: () {
                  setState(() {
                    rdn = Random().nextInt(6) + 1;
                    ldn = Random().nextInt(6) + 1;
                  });
                },
                child: Image.asset('images/dice$ldn.png')),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  rdn = Random().nextInt(6) + 1;
                  ldn = Random().nextInt(6) + 1;
                });
              },
              child: Image(
                image: AssetImage('images/dice$rdn.png'),
              ),
            ),
          )
        ],
      ),
    );
  }
}

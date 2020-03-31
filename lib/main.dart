import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blue[300],
          appBar: AppBar(
            title: Text('Ask Me Anything'),
            backgroundColor: Colors.indigo[600],
          ),
          body: Magic8Ball(),
        ),
      ),
    );

class Magic8Ball extends StatefulWidget {
  @override
  _Magic8BallState createState() => _Magic8BallState();
}

class _Magic8BallState extends State<Magic8Ball> {
  int clickCounter = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  clickCounter = Random().nextInt(5) + 1;
                });
              },
              child: Image.asset('images/ball$clickCounter.png'),
            ),
          )
        ],
      ),
    );
  }
}

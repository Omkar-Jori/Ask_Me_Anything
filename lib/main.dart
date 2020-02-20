import 'dart:math';
import 'package:flutter/material.dart';

void main()
{
  runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blue,
          appBar: AppBar(
            title: Text('Ask Me Anything'),
            backgroundColor: Colors.blue,
          ),
          body: Ball(),
        ),
      ),
    );
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballChange=1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: (){
                setState(() {
                  ballChange=Random().nextInt(5)+1;
                });
              },
              child: Image.asset('images/ball$ballChange.png'),
            ),
          )
        ],
      ),
    );
  }
}


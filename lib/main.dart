import 'package:flutter/material.dart';
import 'dart:math';
int x=1;
void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blue,
          appBar:AppBar(
            title: Text("Ask Me Anything",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 40),),
              backgroundColor: Colors.blue[900]
          ),
          body: Ball(),
        ),

      ),

    );

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {

  void press(){
    setState(() {
      x=Random().nextInt(5)+1;
    });

  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: press,
        child: Image.asset('images/ball$x.png'),
      ),
    );
  }
}


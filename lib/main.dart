import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MainVidget();
  }
}

class MainVidget extends StatefulWidget {
  @override
  MainVidgetState createState() => MainVidgetState();
}

class MainVidgetState extends State<MainVidget> {
  Color mainColor = Colors.yellow;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter the best',
        home: Scaffold(
          backgroundColor: mainColor,
          appBar: AppBar(
            title: Text('Tap please'),
          ),
          body: Stack(
          children: <Widget>[
    Center(
    child: Text('Hey there', style: TextStyle(fontSize: 32.0)),
    ),
    Listener(
    behavior: HitTestBehavior.translucent,
    onPointerDown: (e) {
    setState(() {
    mainColor = Color.fromRGBO(Random().nextInt(254) + 1,
    Random().nextInt(254) + 1, Random().nextInt(254) + 1, 1);
    });
    }
    )
    ]
    )
    )
    );

  }
}

/*import 'package:flutter/material.dart';
import 'dart:math';


void main() {
  runApp(MaterialApp(home: MyPage()));
}

class MyPage extends StatefulWidget {
  @override
  _MyPageState createState() => new _MyPageState();
}

class _MyPageState extends State<MyPage> {
  Random random = new Random();

  Color color = new Color(3);

  void changeRandomColor() {
    setState(() {
      color = Color.fromARGB(
        //or with fromRGBO with fourth arg as _random.nextDouble(),
        random.nextInt(256),
        random.nextInt(256),
        random.nextInt(256),
        random.nextInt(256),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:
        InkWell(
          onTap: changeRandomColor,
          child: Container(
            color: color,
          ),
        )
    );
  }
}
*/
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

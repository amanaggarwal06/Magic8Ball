import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: MaterialApp(
          home: (
          Scaffold(
            backgroundColor: Colors.blue,
            appBar: AppBar(
              title: Text('Ask Me Anything'),
              backgroundColor: Colors.black,
            ),
            body: Myapp(),
          )
          ),
        )
      ),
    );
class Myapp extends StatefulWidget {
  const Myapp({super.key});

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  int ballnumber = 1;
  @override
  Widget build(BuildContext context) {

    return Container(
      child:
           Center(
             child: TextButton(
               onPressed: () {
                 setState(() {
                   ballnumber = Random().nextInt(4) + 1;
                 });
    },
                 child:   Image.asset('images/ball$ballnumber.png'),
             ),
           )

    );
  }
}


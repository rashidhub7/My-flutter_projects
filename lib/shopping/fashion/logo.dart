import 'dart:html';

import 'package:drawer/slide.dart';
import 'package:flutter/material.dart';

void main() =>
    runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splash(),
    ));

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: Colors.green,
              gradient: LinearGradient(
                colors: [
                  Colors.green,
                  Colors.blue,

                ],
                begin: Alignment.centerRight,
                end: Alignment.centerLeft,
              ),
            ),
          ),

          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                backgroundColor: Colors.white38,
                radius: 75.0,
                child: Text("TRends",style: TextStyle(color: Colors.black,fontSize: 30,)
                ),
              ),


              Padding(
                padding: EdgeInsets.only(top: 10.0),
              ),
              Text("Celebrate The Moments",style: TextStyle(color: Colors.white,fontSize: 20))
            ],
          ),
        ],
      ),
    );
  }
}
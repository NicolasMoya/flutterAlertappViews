import 'dart:ui';

import 'package:flutter/material.dart';

class DescriptionPlace extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      body: new Center(
        child: new Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
              //Logica de Map
          ],
        ),
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton:
    Container(
    width: 100.0,
    height: 100.0,
    margin: const EdgeInsets.all(10.0),
    child: new FloatingActionButton(

        onPressed:(){ },
        tooltip: 'Increment',
        child: new Icon(Icons.warning, size: 50.0,),
        backgroundColor: Colors.orangeAccent,



      ),
    )

    );
  }
}
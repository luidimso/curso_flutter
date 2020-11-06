import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    title: "App Test",
    home: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          "Count: 0",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold
          ),
        ),
        Text(
          "Can count!",
          style: TextStyle(
            color: Colors.white,
            fontStyle: FontStyle.italic,
            fontSize: 30
          ),
        )
      ],
    )
  ));
}
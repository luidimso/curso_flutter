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
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              child: Text(
                  "+1",
                  style: TextStyle(
                      fontSize: 40,
                      color: Colors.white
                  )
              ),
              onPressed: () {},
            ),
            FlatButton(
              child: Text(
                  "-1",
                  style: TextStyle(
                      fontSize: 40,
                      color: Colors.white
                  )
              ),
              onPressed: () {},
            )
          ],
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
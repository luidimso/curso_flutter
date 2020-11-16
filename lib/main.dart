import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    title: "App Test",
    home: Home()
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _count = 0;
  String _infoText = "Can count!";

  void _updateCount(int number){
    setState(() {
      _count += number;

      if(_count < 0) {
        _infoText = "It's bad :/";
      } else if(_count <= 10) {
        _infoText = "Can count!";
      } else {
        _infoText = "It's very high!";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset(
          "images/wallpaper.jpg",
          fit: BoxFit.cover,
          height: 1000,
          width: 1000,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Count: $_count",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(10),
                  child: FlatButton(
                    child: Text(
                        "+1",
                        style: TextStyle(
                            fontSize: 40,
                            color: Colors.white
                        )
                    ),
                    onPressed: () {
                      _updateCount(1);
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: FlatButton(
                    child: Text(
                        "-1",
                        style: TextStyle(
                            fontSize: 40,
                            color: Colors.white
                        )
                    ),
                    onPressed: () {
                      _updateCount(-1);
                    },
                  ),
                ),
              ],
            ),
            Text(
              _infoText,
              style: TextStyle(
                  color: Colors.white,
                  fontStyle: FontStyle.italic,
                  fontSize: 30
              ),
            )
          ],
        )
      ],
    );
  }
}

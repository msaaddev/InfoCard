import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Card Assignment',
      home: Scaffold(
          body: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        clipBehavior: Clip.none,
        children: <Widget>[
          Container(
            width: 500,
            height: 400,
            decoration: new BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  stops: [
                    0.1,
                    0.4,
                    0.6,
                    0.9,
                  ],
                  colors: [
                    Colors.blue[300],
                    Colors.blue[400],
                    Colors.blue,
                    Colors.blueAccent[700],
                  ],
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.blueAccent[700],
                    blurRadius: 20.0,
                    spreadRadius: 1.0,
                  )
                ]),
            child: Center(
                child: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(80))),
              child: Icon(
                Icons.emoji_people,
                size: 70,
              ),
            )),
          ),
          Positioned(
            bottom: -100,
            child: Card(
                child: Container(
              height: 200,
              width: 300,
              child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 10.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(80),
                    child: Image.network(
                      'https://i.imgur.com/ZLhqyQK.jpg',
                      height: 120,
                      width: 120,
                    ),
                  ),
                ),
              ]),
            )),
          ),
        ],
      )),
    );
  }
}

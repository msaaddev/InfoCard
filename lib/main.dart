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
          body: Column(
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
          Card(
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
              SizedBox(height: 6),
            ]),
          )),
        ],
      )),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}

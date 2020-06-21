import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Stack(
        children: <Widget>[
          Image.asset("assets/images/background.jpeg"),
          Column(
            children: <Widget>[
              Text("I am the first text"),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("I am the second text with padding"),
              ),
              Container(
                padding: EdgeInsets.all(12.0),
                color: Colors.yellow,
                child: Text(
                  "I am the third text with padding, parent color and text style",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 25.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Image.asset(
                "assets/images/background-2.png",
                // height: 120.0,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

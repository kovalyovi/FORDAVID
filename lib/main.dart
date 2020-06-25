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
    var size = MediaQuery.of(context).size;

    var height = size.height;
    var width = size.width;

    // print("HEIGHT: $height");
    // print("WIDTH: $width");

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            //1
            Container(
              height: 100.0,
              width: width,
              color: Colors.yellow[300],
            ),
            //2
            Container(
              height: 100.0,
              width: width,
              color: Colors.blue[300],
            ),
            //3
            Row(
              children: <Widget>[
                //3.1
                Container(
                  height: 100.0,
                  width: width / 3,
                  color: Colors.brown[50],
                ),
                //3.2
                Container(
                  height: 100.0,
                  width: width / 3,
                  color: Colors.brown[200],
                ),
                //3.3
                Container(
                  height: 100.0,
                  width: width / 3,
                  color: Colors.brown[500],
                ),
              ],
            ),
            //4
            Row(
              children: <Widget>[
                //4.1
                Column(
                  children: <Widget>[
                    // 4.1.1
                    Container(
                      height: 100.0,
                      width: width / 2,
                      color: Colors.orange[100],
                    ),
                    // 4.1.2
                    Container(
                      height: 100.0,
                      width: width / 2,
                      color: Colors.orange[200],
                    ),
                  ],
                ),
                //4.2
                Container(
                  height: 200.0,
                  width: width / 4,
                  color: Colors.orange[500],
                ),
                //4.3
                Container(
                  height: 200.0,
                  width: width / 4,
                  color: Colors.orange[800],
                ),
              ],
            ),
            //5
            Row(
              children: <Widget>[
                // 5.1
                Container(
                  height: 100.0,
                  width: width / 3,
                  color: Colors.red[50],
                ),
                // 5.2
                Container(
                  height: 100.0,
                  width: width / 3,
                  color: Colors.red[100],
                ),
                // 5.3
                Container(
                  height: 100.0,
                  width: width / 3,
                  color: Colors.red[200],
                ),
              ],
            ),
            //6
            Container(
              height: 100.0,
              width: width,
              color: Colors.green[300],
            ),
          ],
        ),
      ),
    );
  }
}

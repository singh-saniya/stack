import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyStack(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyStack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Tinder stack"),
            backgroundColor: Colors.red,
          ),
          body: Center(
            child: Stack(
              children: <Widget>[
                Container(
                  height: 200,
                  width: 200,
                  color: Colors.green,
                ),
                Positioned(
                  top: 10,
                  child: Container(
                    height: 200,
                    width: 200,
                    color: Colors.blue,
                  ),
                ),
                Positioned(
                    top: 20,
                    child: Container(
                      height: 200,
                      width: 200,
                      color: Colors.orange,
                    )),
              ],
            ),
          )),
    );
  }
}

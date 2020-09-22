import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "hello world!",
      home: Scaffold(
        appBar: AppBar(
          title: Text("hello world",
          style: TextStyle(fontFamily: "NotoSansCJKkr", fontWeight: FontWeight.w100),),
        ),
        body: Center(
          child: Text("flutter!"),
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Posts extends StatefulWidget {

  @override
  PostsPageState createState() => PostsPageState();


}

class PostsPageState extends State<Posts> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "posts",
      home: Scaffold(
        appBar: AppBar(title: Text("포스트")),
      ),
    );
  }

}
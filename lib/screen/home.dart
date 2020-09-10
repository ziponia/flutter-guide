import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:my_app/model/post.model.dart' as PostModel;
import 'dart:developer' as developer;

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

Future<PostModel.Post> fetchPost() async {
  final response =
      await http.get('https://jsonplaceholder.typicode.com/posts/1');

  if (response.statusCode == 200) {
    // 만약 서버가 OK 응답을 반환하면, JSON을 파싱합니다.
    developer.log('${json.decode(response.body)}');
    return PostModel.Post.fromJson(json.decode(response.body));
  } else {
    // 만약 응답이 OK가 아니면, 에러를 던집니다.
    throw Exception('Failed to load post');
  }
}

class _MyHomePageState extends State<MyHomePage> {
  Future<PostModel.Post> post;

  @override
  void initState() {
    super.initState();
    post = fetchPost();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: FutureBuilder<PostModel.Post>(
        future: post,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            developer.log('hasData: ${snapshot.data.title}');
            return Text('title: ${snapshot.data.title}');
          } else if (snapshot.hasError) {
            developer.log('error');
            return Text("${snapshot.error}");
          }

          // 기본적으로 로딩 Spinner를 보여줍니다.
          return CircularProgressIndicator();
        },
      )),
    );
  }
}

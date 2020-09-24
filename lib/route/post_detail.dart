import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PostDetailPage extends StatefulWidget {
  @override
  _PostDetailPage createState() => _PostDetailPage();
}

class _PostDetailPage extends State<PostDetailPage> {
  var content = """
  long textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong text
  long textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong text
  long textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong text
  long textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong text
  long textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong text
  long textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong text
  long textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong text
  long textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong textlong text
  """;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            children: <Widget>[
              Expanded(
                child: Text(
                  "상세페이지",
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
              )
            ],
          ),
        ),
        body: ListView(
          children: [
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                children: <Widget>[Text(content)],
              ),
            )
          ],
        ));
  }
}

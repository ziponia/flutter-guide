import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PostDetailPage extends StatefulWidget {
  @override
  _PostDetailPage createState() => _PostDetailPage();
}

class _PostDetailPage extends State<PostDetailPage> {
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
            ),
            ButtonBar(
              children: [
                FlatButton(
                  color: Colors.transparent,
                  child: Text(
                    "완료",
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {},
                )
              ],
            )
          ],
        ),
      ),

    );
  }
}

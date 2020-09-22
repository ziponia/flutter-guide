import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app/components/post/post.model.dart';

class Posts extends StatefulWidget {
  @override
  PostsPageState createState() => PostsPageState();
}

class PostsPageState extends State<Posts> {
  List<Post> posts;

  @override
  void initState() {
    super.initState();
    fetchPosts();
  }

  Future<List<Post>> fetchPosts() async {
    print("_getPostsAsync");
    List<Post> postList = [];
    for (var i = 0; i < 50; i++) {
      Post post = new Post();
      post.userId = i + 1;
      post.id = i + 1;
      post.title = "$i 번째 글";
      postList.add(post);
    }

    posts = postList;

    return postList;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "posts",
      home: Scaffold(
        appBar: AppBar(title: Text("포스트")),
        body: Center(
            child: new ListView.separated(
                padding: EdgeInsets.all(8),
                itemBuilder: (context, index) {
                  return Text("$index 번째 텍스트");
                },
                separatorBuilder: (context, index) {
                  return new Divider();
                },
                itemCount: posts.length)),
      ),
    );
  }
}

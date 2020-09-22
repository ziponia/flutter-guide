import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app/components/post/post_model.dart';

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
                itemBuilder: (context, index) {
                  return PostListItem(
                    title: "$index 번째 텍스트",
                  );
                },
                separatorBuilder: (context, index) {
                  return new Divider();
                },
                itemCount: posts.length)),
      ),
    );
  }
}

class PostListItem extends StatelessWidget {
  final String title;

  PostListItem({this.title}) : assert(title != null, "title 은 필수 입니다.");

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(20),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Column(
              children: [
                Container(
                  child: Text(this.title),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app/components/post/post_model.dart';

class PostList extends StatefulWidget {
  @override
  PostsPageState createState() => PostsPageState();
}

class PostsPageState extends State<PostList> {
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
    return Container(
      child: Scaffold(
        // appBar: AppBar(title: Text("포스트")),
        body: Center(
            child: new ListView.separated(
                itemBuilder: (context, index) {
                  return PostListItem(
                    index: index,
                    title: posts[index].title,
                  );
                },
                separatorBuilder: (context, index) {
                  print("index: $index");
                  return new Divider(
                    height: 4,
                  );
                },
                itemCount: posts.length)),
      ),
    );
  }
}

class PostListItem extends StatelessWidget {
  final String title;
  final int index;

  PostListItem({this.title, this.index})
      : assert(title != null, "title 은 필수 입니다.");

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: double.infinity,
      margin: EdgeInsets.only(top: this.index == 0 ? 5 : 0),
      child: SizedBox(
        child: Container(
          decoration: BoxDecoration(),
          child: RaisedButton(
            elevation: 0,
            child: Text(
              this.title,
              style: TextStyle(
                fontWeight: FontWeight.w500
              ),
            ),
            textTheme: ButtonTextTheme.primary,
            onPressed: () {
              // 포스트 디테일 이동
            },
          ),
          height: 50,
        ),
      ),
    );
  }
}

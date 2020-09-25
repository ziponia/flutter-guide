import 'package:my_app/route/home.dart';
import 'package:my_app/route/login.dart';
import 'package:my_app/route/post_detail.dart';

var routes = {
  '/': (context) => HomePage(),
  '/posts': (context) => HomePage(),
  '/posts/detail': (context) => PostDetailPage(),
  '/login': (context) => LoginPage()
};
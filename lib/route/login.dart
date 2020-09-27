import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPage createState() => _LoginPage();
}

class _LoginPage extends State<LoginPage> {
  var loading = false;

  var count = 0;

  handleLogin() async {
    print("// ...TODO 구글 로그인을 여기다 집어넣도록 하시오.");
    setState(() {
      count++;
    });

    setState(() {
      this.loading = true;
    });

    try {
      await new Future.delayed(const Duration(milliseconds: 3000));
      print("로그인 성공!");
    } catch (e) {
      //
    } finally {
      setState(() {
        this.loading = false;
      });
    }
    // 성공됬다고 가정함.
  }

  Widget googleLoginButton() {
    return RaisedButton(
      elevation: 0.3,
      onPressed: handleLogin,
      child: Container(
        width: double.infinity,
        child: Text(
          !loading ? "구글 로그인" : "로그인중",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 14,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                  "https://i.pinimg.com/originals/59/11/cd/5911cda1f1ae980b26ca367af3197dfd.jpg",
                ),
                fit: BoxFit.cover)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("count: $count"),
            Container(),
            Container(
              padding: EdgeInsets.only(bottom: 50, left: 40, right: 40),
              child: googleLoginButton(),
            )
          ],
        ),
      )),
    );
  }
}

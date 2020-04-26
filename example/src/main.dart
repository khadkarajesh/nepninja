import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nepninja/src/circular_progress_button.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nepninja Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Login(),
    );
  }
}

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _StateLogin();
  }
}

class _StateLogin extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          CircularProgressButton(
            height: 55,
            width: 200,
            borderRadius: 30,
            backgroundColor: Colors.lightBlueAccent,
            fadeDurationInMilliSecond: 400,
            text: "Sign In",
            fontSize: 30,
            progressIndicatorColor: Colors.pinkAccent,
            onTap: (reset) {
              makeRequest(reset);
            },
          )
        ],
      ),
    );
  }

  void makeRequest(Function reset) {
    Future.delayed(Duration(seconds: 3), () {
      reset();
    });
  }
}

import 'package:chat_message_app/screens/Signin/Components/body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class SignInScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        backgroundColor: Colors.white,
        textTheme: TextTheme(
        headline6: TextStyle(color: Color(0XFF8B8B8B), fontSize: 18),
    ),
    title: Text("Sign In"),
    centerTitle: true,
     ),
      body: Body(),
    );
  }
}




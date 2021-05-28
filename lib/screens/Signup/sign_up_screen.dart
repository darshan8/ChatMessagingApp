import 'package:chat_message_app/screens/Signup/Components/body.dart';
import 'package:flutter/material.dart';

import 'Components/sign_up_form.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        textTheme: TextTheme(
          headline6: TextStyle(color: Color(0XFF8B8B8B), fontSize: 18),
        ),
        title: Text("Sign Up"),
        centerTitle: true,
      ),
      body: Body(),
    );
  }
}
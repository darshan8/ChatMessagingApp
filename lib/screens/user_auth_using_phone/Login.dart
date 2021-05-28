import 'package:chat_message_app/components/primary_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Login extends StatelessWidget {
  final _phoneController = TextEditingController();
  final _codeController = TextEditingController();

  Future<bool> loginUser(String phone, BuildContext context) async{

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Login',
          style: TextStyle(
            fontSize: 24,
          ),
        ),
      ),
      body: Container(
        child: Form(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                SizedBox(height: 5),
                TextFormField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    hintText: "Phone number",
                    hintStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                PrimaryButton(
                    text: "Sign up",
                    press: (){}
                    ),
              ],
            ),
          ),
        )
      ),
    );
  }
}

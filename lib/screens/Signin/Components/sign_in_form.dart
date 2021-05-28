import 'package:chat_message_app/components/primary_button.dart';
import 'package:chat_message_app/screens/forgot_password/forgot_password_screen.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

import '../../../constants.dart';

class Signinform extends StatefulWidget {
  const Signinform({Key key}) : super(key: key);

  @override
  _SigninformState createState() => _SigninformState();
}

class _SigninformState extends State<Signinform> {

  bool remember = false;

  String validatepass(value){
    if(value.isEmpty) {
      return "Required *";
    } else if (value.length < 6){
      return "Should be at least 6 characters";
    } else if (value.length > 15){
      return "Should be at most 15 characters";
    }
    return null;
  }
  @override
  Widget build(BuildContext context) {
    return Form(
        autovalidateMode: AutovalidateMode.always,
        child: Column(
          children: [
            SizedBox(height: 30),
            buildEmailFormField(),
            SizedBox(height: 30),
            buildPasswordFormField(),
            SizedBox(height: 20),
            Row(
              children: [
                Checkbox(
                  value: remember,
                  activeColor: kPrimaryColor,
                  onChanged: (value){
                    setState(() {
                      remember = value;
                    });
                  },
                ),
                Text("Remember me"),
                Spacer(),
                GestureDetector(
                  onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => ForgotPasswordScreen())),
                  child: Text(
                    "Forgot Password",
                    style: TextStyle(decoration: TextDecoration.underline),
                  ),
                )
              ],
            ),
            // Error_widget(errors: errors),
            SizedBox(height: 20,),
            PrimaryButton(
                text: "Continue",
                press: (){},
                ),
          ],
        ));
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      obscureText: true,
      validator: validatepass,
      decoration: InputDecoration(
        labelText: "Password",
        hintText: "Password",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: IconButton(
            icon: Icon(Icons.lock),
        ),
      ),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      validator: MultiValidator(
        [
          RequiredValidator(errorText: "Required *"),
          EmailValidator(errorText: "Not a valid email"),
        ]
      ),
      decoration: InputDecoration(
        labelText: "Email",
        hintText: "Enter your email",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: IconButton(
          icon: Icon(Icons.mail),
        ),
      ),
    );
  }
}
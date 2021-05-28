import 'package:chat_message_app/components/no_account_text.dart';
import 'package:chat_message_app/components/social_card_widget.dart';
import 'package:chat_message_app/constants.dart';
import 'package:chat_message_app/screens/Signin/Components/sign_in_form.dart';
import 'package:chat_message_app/screens/Signup/sign_up_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
          EdgeInsets.symmetric(horizontal: 20.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 20),
                Text(
                  "Welcome Back",
                  style: Theme.of(context)
                      .textTheme
                      .headline5
                      .copyWith(fontWeight: FontWeight.bold),
                  ),
                Text(
                  "Sign in with your email and password  \nor continue with social media",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Theme.of(context)
                        .textTheme
                        .bodyText2
                        .color
                        .withOpacity(0.8),
                  ),
                ),
                SizedBox(height: 20),
                Signinform(),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Social_card(
                      icon: "assets/icons/google-icon.svg",
                      press: (){},
                    ),
                    Social_card(
                      icon: "assets/icons/facebook-2.svg",
                      press: (){},
                    ),
                    Social_card(
                      icon: "assets/icons/twitter.svg",
                      press: (){},
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account?",
                      style: TextStyle(fontSize: 16),
                    ),
                    GestureDetector(
                      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=> SignUpScreen())),
                      child: Text(
                        "Sign Up",
                        style: TextStyle(fontSize: 16, color: kPrimaryColor),
                      ),
                    )
                  ],
                )
            ]
          ),
        ),
      ),
    ),
    );
  }
}


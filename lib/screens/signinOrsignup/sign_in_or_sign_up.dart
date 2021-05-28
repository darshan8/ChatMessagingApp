import 'package:chat_message_app/components/primary_button.dart';
import 'package:chat_message_app/screens/Signin/Components/body.dart';
import 'package:chat_message_app/screens/Signin/Components/sign_in_form.dart';
import 'package:chat_message_app/screens/Signin/sign_in_screen.dart';
import 'package:chat_message_app/screens/Signup/sign_up_screen.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class SigninOrSignupScreen extends StatelessWidget {
  const SigninOrSignupScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Column(
            children: [
              Spacer(),
              Image.asset(
                // In case of ios, MediaQuery.of(context).platformBrightness == Brightness.light ? "assets/images/Logo_Light.png" ? "assets/images/Logo_dark.png",
                "assets/images/Logo_light.png",
                height: 146,
              ),
              Spacer(),
              PrimaryButton(
                  text: "Sign In",
                  press: () =>
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SignInScreen(),
                    ),
                  ),
              ),
              SizedBox(height: kDefaultPadding * 1.5),
              PrimaryButton(
                color: Theme.of(context).colorScheme.secondary,
                text: "Sign Up",
                press: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SignUpScreen(),
                  ),
                ),
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}


import 'package:chat_message_app/screens/Signup/Components/sign_up_form.dart';
import 'package:flutter/material.dart';

import '../../../size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
          EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: SizeConfig.screenHeight * 0.04), // 4%
                Text("Register Account"),
                Text(
                  "Complete your details or \ncontinue with social media",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                SignUpForm(),
                SizedBox(height: 30),
                Text(
                  'By continuing your confirming that you agree \nwith our Terms and Conditions',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.caption,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
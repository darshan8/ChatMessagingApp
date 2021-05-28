import 'package:chat_message_app/components/primary_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

class SignUpForm extends StatefulWidget {
  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formkey = GlobalKey<FormState>();
  String name;
  String email;
  String password;

  String validatename(value){
    if(value.isEmpty){
      return "Required *";
    }else {
      return null;
    }
  }

  // String validatepass(value){
  //   if(value.isEmpty) {
  //     return "Required *";
  //   } else if (value.length < 6){
  //     return "Should be at least 6 characters";
  //   } else if (value.length > 15){
  //     return "Should be at most 15 characters";
  //   }
  //   return null;
  // }

  final passwordValidator = MultiValidator([
    RequiredValidator(errorText: 'password is required'),
    MinLengthValidator(6, errorText: 'password must be at least 6 digits long'),
    PatternValidator(r'(?=.*?[#?!@$%^&*-])', errorText: 'passwords must have at least one special character')
  ]);


  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
      autovalidateMode: AutovalidateMode.always,
      child: Column(
        children: [
          SizedBox(height: 20,),
          buildNameFormField(),
          SizedBox(height: 30),
          buildEmailFormField(),
          SizedBox(height: 30),
          buildPasswordFormField(),
          SizedBox(height: 30),
          buildConformPassFormField(),
          // Error_widget(errors: errors),
          SizedBox(height: 40),
          PrimaryButton(
            text: "Continue",
            press: () {
              // print(name);
              // print(email);
              // print(password);
            },
          ),
        ],
      ),
    );
  }

  TextFormField buildNameFormField() {
    return TextFormField(
      // keyboardType: TextInputType.emailAddress,
       onChanged: (value) => name = value,
       validator: validatename,
       decoration: InputDecoration(
        labelText: "Name",
        hintText: "Full Name",
        // If  you are using latest version of flutter then label text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: IconButton(
          icon: Icon(Icons.drive_file_rename_outline),
          onPressed: (){},
        ),
      ),
    );
  }

  TextFormField buildConformPassFormField() {
    return TextFormField(
       obscureText: true,
       validator: (value) => MatchValidator(errorText: "passwords don't match").validateMatch(value, password),
       decoration: InputDecoration(
         labelText: "Confirm Password",
         hintText: "Confirm password",
        // If  you are using latest version of flutter then label text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
         floatingLabelBehavior: FloatingLabelBehavior.always,
         suffixIcon: IconButton(
           icon: Icon(Icons.lock),
             onPressed: (){},
        ),
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      obscureText: true,
      onSaved: (newValue) => password = newValue,
      validator: passwordValidator,
      decoration: InputDecoration(
        labelText: "Password",
        hintText: "Password",
        // If  you are using latest version of flutter then label text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: IconButton(
          icon: Icon(Icons.lock_open),
          onPressed: (){},
        ),
      ),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      onSaved: (value) => email = value,
      validator: MultiValidator(
        [
          RequiredValidator(errorText: "Required *"),
          EmailValidator(errorText: "Not a valid email"),
        ]
      ),
      decoration: InputDecoration(
        labelText: "Email",
        hintText: "Email",
        // If  you are using latest version of flutter then label text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: IconButton(
          icon: Icon(Icons.mail),
            onPressed: (){},
        ),
      ),
    );
  }
}
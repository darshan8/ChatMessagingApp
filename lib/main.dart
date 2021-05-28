import 'package:chat_message_app/screens/Chat_Screen/call_screen.dart';
import 'package:chat_message_app/screens/Chat_Screen/chat_screen.dart';
import 'package:chat_message_app/screens/Home/home_screen.dart';
import 'package:chat_message_app/screens/Home/home_screen1.dart';
import 'package:chat_message_app/screens/user_auth_using_phone/Login.dart';
import 'package:chat_message_app/screens/welcome/welcome_screen.dart';
import 'package:chat_message_app/theme.dart';
// import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: lightThemeData(context),
      darkTheme: darkThemeData(context),
      themeMode: ThemeMode.system,
      home: Login(),
    );
  }
}

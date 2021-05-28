import 'package:flutter/material.dart';

class Callscreen extends StatelessWidget {
  const Callscreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
          elevation: 6,
          leading: IconButton(
            icon: Icon(Icons.account_circle_outlined),
            iconSize: 50,
            color: Colors.black,
            onPressed: (){},
          ),
        ),
      body: Column(

      ),
    );
  }
}

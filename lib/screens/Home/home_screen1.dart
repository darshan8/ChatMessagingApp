import 'package:chat_message_app/models/Chat.dart';
import 'package:chat_message_app/screens/Chat_Screen/chat_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen1 extends StatelessWidget {

  TextEditingController _searchController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(left: 20, right: 20, top: 15),
          child: ListView(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage(
                                "assets/images/ironman.jpeg"),
                            fit: BoxFit.cover)),
                  ),
                  Text(
                    "Chats",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  Icon(Icons.edit)
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                width: double.infinity,
                height: 40,
                decoration: BoxDecoration(
                    color: Color(0xFFe9eaec),
                    borderRadius: BorderRadius.circular(15)),
                child: TextField(
                  cursorColor: Color(0xFF000000),
                  controller: _searchController,
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.search,
                        color: Color(0xFF000000).withOpacity(0.5),
                      ),
                      hintText: "Search",
                      border: InputBorder.none),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

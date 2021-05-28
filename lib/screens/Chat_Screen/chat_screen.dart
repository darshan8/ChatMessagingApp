import 'package:chat_message_app/models/Chat.dart';
import 'package:chat_message_app/screens/Chat_Screen/VideoScreen.dart';
import 'package:chat_message_app/screens/Chat_Screen/call_screen.dart';
import 'package:chat_message_app/screens/Chat_Screen/components/body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          flexibleSpace: SafeArea(
            child: Container(
              child: Padding(
                padding: const EdgeInsets.only(right: 16),
                child: Row(
                  children: [
                    IconButton(
                        icon: Icon(Icons.arrow_back_ios),
                        onPressed: (){},
                    ),
                    SizedBox(width: 2),
                    CircleAvatar(
                      maxRadius: 20,
                      backgroundImage: AssetImage('assets/images/ironman.jpeg'),
                    ),
                    SizedBox(width: 12,),
                    Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Ironman',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(height: 6,),
                              Text(
                                  'Online',
                                style: TextStyle(
                                    color: Colors.grey.shade600, fontSize: 13),
                              ),
                            ],
                        ),
                    ),
                    Row(
                      children: [
                        IconButton(
                            icon: Icon(Icons.call_rounded),
                            onPressed: (){}
                            ),
                        IconButton(
                            icon: Icon(Icons.video_call_rounded),
                            onPressed: (){}
                        ),
                        IconButton(
                            icon: Icon(Icons.settings),
                            onPressed: (){}
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
      ),
      body: Body(),
    );
  }
}

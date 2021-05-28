import 'package:chat_message_app/models/Chat.dart';
import 'package:chat_message_app/screens/Chat_Screen/chat_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        elevation: 8,
        leading: IconButton(
          icon: Icon(Icons.circle),
          highlightColor: Colors.black54,
          color: Colors.white,
          onPressed: (){},
        ),
        title: Text(
          'Chats',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.widgets_outlined),
            color: Colors.white,
            onPressed: (){},
          )
        ],
      ),
      body: ListView.builder(
        itemCount: chatsData.length,
          itemBuilder: (BuildContext context, int index){
          final Chat = chatsData[index];
            return GestureDetector(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ChatScreen())
              ),
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 15,
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(2),
                          decoration: Chat.isOnline ? BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(40)),
                              border: Border.all(
                                width: 2,
                                color: Theme.of(context).primaryColor,
                              ), ):
                              BoxDecoration(
                                shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 5,
                                )
                              ]
                            ),
                          child:  CircleAvatar(
                            radius: 35,
                            backgroundImage: AssetImage(Chat.image),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.65,
                          padding: EdgeInsets.only(left: 20),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        Chat.name,
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                        ),
                                      ),
                                      Chat.isOnline ?
                                      Container(
                                        margin: const EdgeInsets.only(left: 5),
                                        width: 7,
                                        height: 7,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Theme.of(context).primaryColor,
                                        ),
                                      ) :
                                          Container(child: null),
                                      ],
                                      ),
                                      Text(
                                        Chat.time,
                                        style: TextStyle(
                                          fontSize: 11,
                                          fontWeight: FontWeight.w300,
                                          color: Colors.black54,
                                        ),
                                      ),
                                    ],
                                  ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  Chat.lastMessage,
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black54,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          }
      ),
    );
  }
}




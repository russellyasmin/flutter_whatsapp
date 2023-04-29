import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_whatsapp/components/chatTile.dart';
import 'package:flutter_whatsapp/components/seperator.dart';
import 'package:flutter_whatsapp/screens/callsScreen.dart';
import 'package:flutter_whatsapp/screens/statusScreen.dart';
import 'package:flutter_whatsapp/whatsAppData.dart';

Data whatsapp = Data();

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  static const String id = "Chatscreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xff075e54),
        title: Text(
          "WhatsApp",
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                size: 28,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                CupertinoIcons.ellipsis_vertical,
                size: 30,
              )),
        ],
        bottom: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Color(0xff075e54),
          leading: Container(
            child: Icon(
              Icons.camera_alt,
              size: 28,
              color: Colors.white.withOpacity(0.5),
            ),
          ),
          actions: [
            Container(
              width: 115,
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(color: Colors.white, width: 5))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: GestureDetector(
                      onTap: () {},
                      child: Text(
                        "Chats",
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 115,
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(color: Colors.transparent, width: 5))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, StatusScreen.id);
                      },
                      child: Text(
                        "Status",
                        style: TextStyle(
                            fontSize: 18, color: Colors.white.withOpacity(0.5)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 115,
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(color: Colors.transparent, width: 5))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, CallScreen.id);
                      },
                      child: Text(
                        "Calls",
                        style: TextStyle(
                            fontSize: 18, color: Colors.white.withOpacity(0.5)),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      floatingActionButton: Container(
        width: 70,
        height: 70,
        child: FittedBox(
          child: FloatingActionButton(
            onPressed: () {},
            child: Icon(
              Icons.message,
            ),
            backgroundColor: Color(0xff25D355),
          ),
        ),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) => ChatTile(
                img: whatsapp.chat.values.elementAt(index).elementAt(1),
                msg: whatsapp.chat.values.elementAt(index).elementAt(2),
                name: whatsapp.chat.values.elementAt(index).elementAt(0),
                time: whatsapp.chat.values.elementAt(index).elementAt(3),
              ),
          separatorBuilder: (context, index) => Seperator(),
          itemCount: whatsapp.chat.length),
    );
  }
}

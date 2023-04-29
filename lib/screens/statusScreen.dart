import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_whatsapp/components/statusTile.dart';
import 'package:flutter_whatsapp/screens/callsScreen.dart';
import 'package:flutter_whatsapp/screens/chatScreen.dart';

class StatusScreen extends StatelessWidget {
  const StatusScreen({super.key});
  static const String id = "StatusScreen";

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
                      bottom: BorderSide(color: Colors.transparent, width: 5))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, ChatScreen.id);
                      },
                      child: Text(
                        "Chats",
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
                      bottom: BorderSide(color: Colors.white, width: 5))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: GestureDetector(
                      onTap: () {},
                      child: Text(
                        "Status",
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
      body: Stack(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 10,
                ),
                child: ListTile(
                  leading: Stack(
                    children: [
                      CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage("images/IMG_2040.jpg"),
                      ),
                      Positioned(
                          left: 30,
                          top: 30,
                          child: CircleAvatar(
                            backgroundColor: Color(0xff25d366),
                            radius: 10,
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                              size: 20,
                            ),
                          ))
                    ],
                  ),
                  title: Text(
                    "My Status",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  subtitle: Text(
                    "Tap to add status update",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                color: Colors.grey.shade200,
                padding: EdgeInsets.only(left: 20, top: 10, bottom: 10),
                child: Text(
                  "Recent Updates",
                  style: TextStyle(
                    color: Colors.grey.shade600,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              StatusTile(),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: EdgeInsets.only(right: 20, bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                        child: ImageIcon(
                          AssetImage(
                            "images/pencil.png",
                          ),
                        ),
                        padding: EdgeInsets.all(8),
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.blueGrey.shade50,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey,
                                  offset: Offset(0, 3),
                                  blurRadius: 3)
                            ])),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.only(right: 20, bottom: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                        child: Icon(
                          Icons.camera_alt_rounded,
                          color: Colors.white,
                          size: 26,
                        ),
                        padding: EdgeInsets.all(8),
                        height: 55,
                        width: 55,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xff25d366),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey,
                                  offset: Offset(0, 3),
                                  blurRadius: 3)
                            ])),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

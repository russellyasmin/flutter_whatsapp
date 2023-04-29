import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_whatsapp/components/callTile.dart';
import 'package:flutter_whatsapp/components/seperator.dart';
import 'package:flutter_whatsapp/screens/chatScreen.dart';
import 'package:flutter_whatsapp/screens/statusScreen.dart';
import '../whatsAppData.dart';

Data callList = Data();

class CallScreen extends StatelessWidget {
  const CallScreen({super.key});
  static const String id = "CallScareen";
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
                      bottom: BorderSide(color: Colors.white, width: 5))),
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
                        style: TextStyle(fontSize: 18, color: Colors.white),
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
        height: 70,
        width: 70,
        child: FittedBox(
          child: FloatingActionButton(
              backgroundColor: Color(0xff25D355),
              child: Icon(
                Icons.add_call,
                color: Colors.white,
              ),
              onPressed: () {}),
        ),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) => CallTile(
              name: callList.call.values.elementAt(index).elementAt(0),
              img: callList.call.values.elementAt(index).elementAt(1),
              vid: callList.call.values.elementAt(index).elementAt(2),
              isMissed: callList.call.values.elementAt(index).elementAt(3),
              isComming: callList.call.values.elementAt(index).elementAt(4),
              time: callList.call.values.elementAt(index).elementAt(5)),
          separatorBuilder: (context, index) =>
              callList.call.values.elementAt(index).elementAt(6)
                  ? SizedBox(
                      height: 10,
                    )
                  : Seperator(),
          itemCount: callList.call.length),
    );
  }
}

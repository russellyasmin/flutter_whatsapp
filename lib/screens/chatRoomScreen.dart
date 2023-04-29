import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_whatsapp/components/massageBubble.dart';
import 'package:flutter_whatsapp/whatsAppData.dart';

Data data = Data();

class ChatRoomScreen extends StatefulWidget {
  final String name;
  final String img;
  const ChatRoomScreen({super.key, required this.name, required this.img});

  @override
  State<ChatRoomScreen> createState() => _ChatRoomScreenState();
}

TextEditingController textcontrol = TextEditingController();

class _ChatRoomScreenState extends State<ChatRoomScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff075e54),
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            widget.img != null
                ? CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage(widget.img),
                  )
                : Container(
                    height: 36,
                    width: 36,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.white),
                    child: Icon(
                      Icons.account_circle,
                      size: 36,
                      color: Colors.grey.shade500,
                    ),
                  ),
            SizedBox(
              width: 8,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.name,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "Online",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w400),
                ),
              ],
            )
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.videocam_rounded,
                color: Colors.white,
                size: 28,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.phone,
                color: Colors.white,
                size: 28,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                CupertinoIcons.ellipsis_vertical,
                color: Colors.white,
                size: 28,
              ))
        ],
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return MassageBubble(
                      massage:
                          data.chatMsgs.values.elementAt(index).elementAt(0),
                      isme: data.chatMsgs.values.elementAt(index).elementAt(1));
                },
                itemCount: data.chatMsgs.length,
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin:
                      EdgeInsets.only(left: 8, top: 8, bottom: 20, right: 6),
                  width: MediaQuery.of(context).size.width * 0.78,
                  height: MediaQuery.of(context).size.width * 0.12,
                  padding: EdgeInsets.only(right: 10, left: 5),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.emoji_emotions_outlined,
                          color: Colors.grey.shade500,
                          size: 30,
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 3, left: 5),
                          width: MediaQuery.of(context).size.width * 0.4,
                          height: MediaQuery.of(context).size.height * 0.1,
                          child: TextField(
                            controller: textcontrol,
                            cursorColor: Colors.teal,
                            style: TextStyle(fontSize: 20),
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Type massage...",
                                hintStyle: TextStyle(
                                    color: Colors.grey.shade400, fontSize: 19)),
                          ),
                        ),
                        Icon(
                          CupertinoIcons.paperclip,
                          color: Colors.grey.shade500,
                          size: 27,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        textcontrol.text.trim() == "" ||
                                textcontrol.text == null
                            ? Icon(
                                Icons.camera_alt_rounded,
                                color: Colors.grey.shade500,
                                size: 25,
                              )
                            : Container(),
                      ]),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5, bottom: 10),
                  child: CircleAvatar(
                    backgroundColor: Color(0xff00897b),
                    radius: 23,
                    child: textcontrol.text.trim() == "" ||
                            textcontrol.text == null
                        ? Icon(Icons.mic, color: Colors.white, size: 30)
                        : IconButton(
                            onPressed: () {
                              data.chatMsgs[data.chatMsgs.length] = [
                                textcontrol.text,
                                true
                              ];
                              textcontrol.clear();
                              setState(() {});
                            },
                            icon: Icon(
                              Icons.send_rounded,
                              color: Colors.white,
                            )),
                  ),
                )
              ],
            )
          ],
        ),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/anikhatwo.jpeg"), fit: BoxFit.fill)),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.symmetric(vertical: 5),
      ),
    );
  }

  @override
  void dispose() {
    textcontrol.dispose();
    super.dispose();
  }
}

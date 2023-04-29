import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_whatsapp/screens/chatRoomScreen.dart';

class ChatTile extends StatelessWidget {
  final String name;
  final String img;
  final String msg;
  final String time;
  const ChatTile(
      {super.key,
      required this.name,
      required this.img,
      required this.msg,
      required this.time});

  @override
  Widget build(BuildContext context) {
    return ListTile(
        onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ChatRoomScreen(
                      name: name,
                      img: img,
                    ))),
        leading: img != null
            ? Padding(
                padding: EdgeInsets.only(right: 8),
                child: CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage(img),
                ),
              )
            : Padding(
                padding: EdgeInsets.only(right: 8),
                child: Icon(
                  Icons.account_circle,
                  size: 55,
                  color: Colors.grey.shade500,
                ),
              ),
        minVerticalPadding: 0,
        horizontalTitleGap: 5,
        trailing: Padding(
          padding: EdgeInsets.all(8),
          child: Text(
            time,
            style: TextStyle(color: Colors.grey.shade500),
          ),
        ),
        title: Text(
          name,
          style: TextStyle(fontSize: 19),
          overflow: TextOverflow.ellipsis,
        ),
        subtitle: Text(
          msg,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(fontSize: 15),
        ));
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CallTile extends StatelessWidget {
  final String name;
  final String img;
  final int vid;
  final bool isMissed;
  final bool isComming;
  final String time;
  const CallTile(
      {super.key,
      required this.name,
      required this.img,
      required this.vid,
      required this.isMissed,
      required this.isComming,
      required this.time});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: img != null
          ? CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage(img),
            )
          : Icon(
              Icons.account_circle,
              color: Colors.grey.shade500,
            ),
      title: Text(
        name,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(fontSize: 20),
      ),
      subtitle: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Icon(
            isComming
                ? CupertinoIcons.arrow_down_left
                : CupertinoIcons.arrow_up_right,
            color: isMissed ? Colors.red : Color(0xff25D355),
            size: 20,
          ),
          Text(
            time,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontSize: 15, color: Colors.grey.shade500),
          )
        ],
      ),
      trailing: Icon(
        vid == 0 ? Icons.call : Icons.videocam_rounded,
        size: 29,
        color: Colors.teal,
      ),
    );
  }
}

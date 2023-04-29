import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MassageBubble extends StatelessWidget {
  final String massage;
  final bool isme;

  const MassageBubble({super.key, required this.massage, required this.isme});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment:
              isme ? MainAxisAlignment.end : MainAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 8),
              constraints: BoxConstraints(
                  minWidth: 0,
                  maxWidth: MediaQuery.of(context).size.width * 0.7),
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 3),
              decoration: BoxDecoration(
                  color: isme ? Color(0xffccfbc6) : Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Text(
                massage,
                softWrap: true,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
            )
          ],
        ),
        SizedBox(
          height: 8,
        )
      ],
    );
  }
}

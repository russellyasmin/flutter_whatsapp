import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_whatsapp/components/seperator.dart';
import 'package:flutter_whatsapp/whatsAppData.dart';
import '../whatsAppData.dart';
import 'dart:math';

Data data = Data();

class StatusTile extends StatelessWidget {
  const StatusTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
          itemBuilder: (context, index) {
            return ListTile(
              leading: DottedBorder(
                  color: Colors.green.shade300,
                  borderType: BorderType.Circle,
                  radius: Radius.circular(27),
                  dashPattern: [
                    (2 * pi * 27) /
                        data.statusList.values.elementAt(index).elementAt(2),
                    data.statusList.values.elementAt(index).elementAt(3),
                  ],
                  strokeWidth: 3,
                  child: CircleAvatar(
                    radius: 27,
                    backgroundColor: Colors.transparent,
                    child: CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage(
                        data.statusList.values.elementAt(index).elementAt(1),
                      ),
                    ),
                  )),
              title: Text(
                '${data.statusList.values.elementAt(index).elementAt(0)}',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              subtitle: Text(
                '${data.statusList.values.elementAt(index).elementAt(4)}',
                style: TextStyle(color: Colors.grey, fontSize: 16),
              ),
            );
          },
          separatorBuilder: (context, index) {
            return data.statusList.values.elementAt(index).elementAt(5)
                ? SizedBox(
                    height: 20,
                  )
                : Seperator();
          },
          itemCount: data.statusList.length),
    );
  }
}

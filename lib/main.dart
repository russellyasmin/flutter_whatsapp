import 'package:flutter/material.dart';
import 'package:flutter_whatsapp/screens/callsScreen.dart';
import 'package:flutter_whatsapp/screens/chatScreen.dart';
import 'package:flutter_whatsapp/screens/statusScreen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: ChatScreen.id,
    routes: {
      ChatScreen.id: (ctx) => ChatScreen(),
      CallScreen.id: (ctx) => CallScreen(),
      StatusScreen.id: (ctx) => StatusScreen()
    },
  ));
}

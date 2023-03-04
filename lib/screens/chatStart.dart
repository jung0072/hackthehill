import 'package:flutter/material.dart';

class ChatStart extends StatelessWidget {
  const ChatStart({Key? key}) : super(key: key);
  static const String id = 'chatStart_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bubble"),
      ),
      body: Center(
        child: Column(
          children: [Text("start chat")],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, ChatStart.id);
        },
        child: Icon(Icons.message),
      ),
    );
  }
}

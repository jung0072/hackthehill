import 'package:flutter/material.dart';
import 'package:bubble/screens/chatStart.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);
  static const String id = 'welcome_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bubble"),
      ),
      body: Center(
        child: Column(
          children: [Text("landing page info comes here")],
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

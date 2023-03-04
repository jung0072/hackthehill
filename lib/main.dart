import 'package:flutter/material.dart';
import 'package:bubble/screens/welcomeScreen.dart';
import 'package:bubble/screens/chatStart.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => const WelcomeScreen(),
        ChatStart.id: (context) => ChatStart(),
      },
    );
  }
}

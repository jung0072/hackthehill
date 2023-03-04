import 'package:flutter/material.dart';
import 'package:bubble/screens/welcomeScreen.dart';
import 'package:bubble/screens/chatStart.dart';
import 'package:bubble/screens/qrScanner.dart';
import 'package:bubble/screens/qrGenerator.dart';
import 'package:bubble/screens/chatScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: const Color(0xFFFAF9F9)),
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => const WelcomeScreen(),
        ChatStart.id: (context) => ChatStart(),
        QRScanner.id: (context) => QRScanner(),
        QRGenerator.id: (context) => QRGenerator(),
        ChatScreen.id: (context) => ChatScreen(),
      },
    );
  }
}

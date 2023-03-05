import 'package:flutter/material.dart';
import 'package:bubble/screens/welcomeScreen.dart';
import 'package:bubble/screens/qrScanner.dart';
import 'package:bubble/screens/qrGenerator.dart';
import 'package:bubble/screens/chatScreen.dart';
import 'package:bubble/screens/askNickname.dart';

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
        AskNickname.id: (context) => const AskNickname(),
        QRScanner.id: (context) => const QRScanner(),
        QRGenerator.id: (context) => const QRGenerator(),
        ChatScreen.id: (context) => const ChatScreen(),
      },
    );
  }
}

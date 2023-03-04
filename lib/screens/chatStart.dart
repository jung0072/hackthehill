import 'package:flutter/material.dart';
import 'package:bubble/components/rounded_button.dart';
import 'package:bubble/screens/qrScanner.dart';
import 'package:bubble/screens/qrGenerator.dart';

class ChatStart extends StatelessWidget {
  const ChatStart({Key? key}) : super(key: key);
  static const String id = 'chatStart_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Start Chat"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Hero(
                tag: 'start chat screen',
                child: Container(
                  child: Image.asset('images/startChat.png'),
                  height: 300.0,
                )),
            RoundedButton(
              title: "Turn On The Camera",
              colour: const Color(0xFFF08B1C),
              onPressed: () {
                Navigator.pushNamed(context, QRScanner.id);
              },
            ),
            RoundedButton(
              title: "Show your QR code",
              colour: const Color(0xFF3595EC),
              onPressed: () {
                Navigator.pushNamed(context, QRGenerator.id);
              },
            ),
          ],
        ),
      ),
    );
  }
}

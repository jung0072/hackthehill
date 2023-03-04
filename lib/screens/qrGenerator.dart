import 'package:flutter/material.dart';
import 'package:bubble/components/rounded_button.dart';
import 'package:bubble/screens/chatScreen.dart';

class QRGenerator extends StatelessWidget {
  const QRGenerator({Key? key}) : super(key: key);
  static const String id = "QR_generator_screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Your QR code"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: Image.asset('images/testQR.png'),
              height: 300.0,
            ),
            const SizedBox(
              height: 20,
            ),
            RoundedButton(
              title: "Finished Scanning",
              colour: const Color(0xFFF08B1C),
              onPressed: () {
                Navigator.pushNamed(context, ChatScreen.id);
              },
            ),
          ],
        ),
      ),
    );
  }
}

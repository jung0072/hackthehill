import 'package:bubble/constants.dart';
import 'package:flutter/material.dart';
import 'package:bubble/components/rounded_button.dart';
import 'package:bubble/screens/qrScanner.dart';
import 'package:bubble/screens/qrGenerator.dart';

class AskNickname extends StatelessWidget {
  const AskNickname({Key? key}) : super(key: key);
  static const String id = "ask_nickname_screen";

  @override
  Widget build(BuildContext context) {
    final arguments = (ModalRoute.of(context)?.settings.arguments ??
        <String, dynamic>{}) as Map;

    return Scaffold(
        appBar: AppBar(
          title: const Text("Scan QR code"),
        ),
        body: Container(
          margin: EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter your nickname',
                ),
                onChanged: (text) {
                  kNickname = text;
                },
              ),
              RoundedButton(
                title: "Enter",
                colour: const Color(0xFFF08B1C),
                onPressed: () {
                  if (arguments["navigateTo"] == "create") {
                    Navigator.pushNamed(context, QRGenerator.id);
                  } else if (arguments["navigateTo"] == "join") {
                    Navigator.pushNamed(context, QRScanner.id);
                  }
                },
              ),
            ],
          ),
        ));
  }
}

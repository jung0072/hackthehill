import 'package:bubble/screens/askNickname.dart';
import 'package:flutter/material.dart';
import 'package:bubble/components/rounded_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);
  static const String id = 'welcome_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Hero(
                tag: 'welcome page',
                child: Container(
                  child: Image.asset('images/welcome.png'),
                  height: 300.0,
                )),
            const Text(
              "No need to Log In!",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Simplest way to chat on mobile phones",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            RoundedButton(
              title: "Join / Scan QR code",
              colour: const Color(0xFFF08B1C),
              onPressed: () {
                Navigator.pushNamed(context, AskNickname.id,
                    arguments: {"navigateTo": "join"});
              },
            ),
            RoundedButton(
              title: "Create / Show QR code",
              colour: const Color(0xFF3595EC),
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  AskNickname.id,
                  arguments: {"navigateTo": "create"},
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

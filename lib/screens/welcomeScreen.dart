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
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.pushNamed(context, ChatStart.id);
        },
        label: const Text("Start Chat"),
        icon: const Icon(Icons.message),
        backgroundColor: const Color(0xFFF08B1C),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:bubble/components/rounded_button.dart';
import 'package:bubble/screens/chatScreen.dart';
import 'package:flutter/services.dart';
import 'package:network_info_plus/network_info_plus.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:bubble/constants.dart';

class QRGenerator extends StatefulWidget {
  const QRGenerator({Key? key}) : super(key: key);
  static const String id = "QR_generator_screen";

  @override
  State<QRGenerator> createState() => _QRGeneratorState();
}

class _QRGeneratorState extends State<QRGenerator> {
  final NetworkInfo _networkInfo = NetworkInfo();

  @override
  void initState() {
    super.initState();
    _initNetworkInfo();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Your QR code"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: QrImage(
                data: kWifiIPv4,
                version: QrVersions.auto,
                size: 200.0,
              ),
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

  Future<void> _initNetworkInfo() async {
    try {
      String? buffer = await _networkInfo.getWifiIP();
      if (buffer != null) {
        kWifiIPv4 = buffer;
      }
      print("IP Address: " + kWifiIPv4);
    } on PlatformException catch (e) {
      print('Failed to get Wifi IPv4');
      print(e);
    }
  }
}

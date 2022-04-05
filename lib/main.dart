import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  // Phải biết được cách để lấy được:
  //     1. url : https://qr-stg.sandbox.paypay.ne.jp
  //     2. id : 28180104xVIrOACg7zcA58Je
  final String _urlId =
      'https://qr-stg.sandbox.paypay.ne.jp/28180104xVIrOACg7zcA58Je';

  // Phải biết được cách để lấy được:
  //     1. url : https://stg-www.sandbox.paypay.ne.jp/app/cashier
  //     2. code : https%3A%2F%2Fqr-stg.sandbox.paypay.ne.jp%2F28180104eJCUxb4vM0EHXc9z&pid=QRCode&link_key=https://qr-stg.sandbox.paypay.ne.jp/28180104eJCUxb4vM0EHXc9z&af_dp=paypay%3A%2F%2Fpayment&referrer=af_tranid%3D5fOfhE1wFnhEs_wMcdd7OQ%26pid%3DQRCode%26link_key%3Dhttps%3A%2F%2Fqr-stg.sandbox.paypay.ne.jp%2F28180104eJCUxb4vM0EHXc9z%26af_dp%3Dpaypay%253A%252F%252Fpayment%26af_ios_url%3Dhttps%3A%2F%2Fstg-www.sandbox.paypay.ne.jp%2Fapp%2Fcashier%3Fcode%3Dhttps%253A%252F%252Fqr-stg.sandbox.paypay.ne.jp%252F28180104eJCUxb4vM0EHXc9z%26af_android_url%3Dhttps%3A%2F%2Fstg-www.sandbox.paypay.ne.jp%2Fapp%2Fcashier%3Fcode%3Dhttps%253A%252F%252Fqr-stg.sandbox.paypay.ne.jp%252F28180104eJCUxb4vM0EHXc9z
  final String _urlCode =
      'https://stg-www.sandbox.paypay.ne.jp/app/cashier?code=https%3A%2F%2Fqr-stg.sandbox.paypay.ne.jp%2F28180104eJCUxb4vM0EHXc9z&pid=QRCode&link_key=https://qr-stg.sandbox.paypay.ne.jp/28180104eJCUxb4vM0EHXc9z&af_dp=paypay%3A%2F%2Fpayment&referrer=af_tranid%3D5fOfhE1wFnhEs_wMcdd7OQ%26pid%3DQRCode%26link_key%3Dhttps%3A%2F%2Fqr-stg.sandbox.paypay.ne.jp%2F28180104eJCUxb4vM0EHXc9z%26af_dp%3Dpaypay%253A%252F%252Fpayment%26af_ios_url%3Dhttps%3A%2F%2Fstg-www.sandbox.paypay.ne.jp%2Fapp%2Fcashier%3Fcode%3Dhttps%253A%252F%252Fqr-stg.sandbox.paypay.ne.jp%252F28180104eJCUxb4vM0EHXc9z%26af_android_url%3Dhttps%3A%2F%2Fstg-www.sandbox.paypay.ne.jp%2Fapp%2Fcashier%3Fcode%3Dhttps%253A%252F%252Fqr-stg.sandbox.paypay.ne.jp%252F28180104eJCUxb4vM0EHXc9z';

  void _launchURL(String url) async {
    if (!await launch(url)) throw 'Could not launch $url';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () => _launchURL(_urlId),
            child: const Text('Navigate to Browser with ID'),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () => _launchURL(_urlCode),
            child: const Text('Navigate to Browser with Code'),
          ),
        ],
      ),
    ));
  }
}

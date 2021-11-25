import 'package:flutter/material.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  _OtpScreenState createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Otp Screen'),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextFormField(),
          ),
          ElevatedButton(onPressed: () {}, child: const Text('Continue'))
        ],
      )),
    );
  }
}

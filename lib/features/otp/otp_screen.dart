import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test1/services/api_service.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  _OtpScreenState createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final TextEditingController _controller = TextEditingController();
  final apiService = Get.find<ApiService>();
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
            child: TextFormField(
              controller: _controller,
            ),
          ),
          ElevatedButton(
              onPressed: () {
                if (apiService.otp == _controller.value) {
                  print(apiService.otp);
                } else {
                  print('Wrong otp');
                }
              },
              child: const Text('Continue'))
        ],
      )),
    );
  }
}

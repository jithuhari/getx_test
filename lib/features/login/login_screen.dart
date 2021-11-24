import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test1/features/login/login_controller.dart';

class LoginScreen extends GetView<LoginController> {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(LoginController());
    return Scaffold(
      body: SafeArea(
        child: Form(
          key: controller.loginFormKey,
          child: Column(
            children: [
              const Text('Login Here'),
              TextFormField(
                //key: controller.loginFormKey,
                controller: controller.phoneController,
                onSaved: (value) {
                  controller.phoneno = value!;
                },
                validator: (value) {
                  return controller.validatePhNumber(value!);
                },
              ),
              ElevatedButton(
                onPressed: () {
                  controller.checkLogin();
                  //Get.toNamed("/otp");
                },
                child: const Text('Continue'),
              )
            ],
          ),
        ),
      ),
    );
  }
}

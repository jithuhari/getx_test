import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:test1/services/api_service.dart';

class LoginController extends GetxController {
  final apiService = Get.put(ApiService());
  final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();

  late TextEditingController phoneController;
  var phoneno = '';

  @override
  void onInit() {
    super.onInit();
    phoneController = TextEditingController();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    phoneController.dispose();
    // super.onClose();
  }

  String? validatePhNumber(String value) {
    if (!GetUtils.isPhoneNumber(value)) {
      return "provide a valid  Phone Number";
    }
    return null;
  }

  void checkLogin() {
    final isValid = loginFormKey.currentState!.validate();
    if (!isValid) {
      return;
    } else {
      Get.toNamed("/otp");
      print(apiService.phNumber);
    }
    loginFormKey.currentState!.save();
  }
}

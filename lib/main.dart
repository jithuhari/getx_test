import 'package:flutter/material.dart';
import 'package:get/get.dart';
//import 'package:test1/features/login/login_screen.dart';
import 'package:test1/utils/routes.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: routes(),
    );
  }
}

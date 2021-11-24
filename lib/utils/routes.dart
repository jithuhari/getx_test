import 'package:get/route_manager.dart';
import 'package:test1/features/login/login_screen.dart';
import 'package:test1/features/otp/otp_screen.dart';

List<GetPage> routes() => [
      GetPage(name: "/", page: () => const LoginScreen()),
      GetPage(name: "/otp", page: () => const OtpScreen())
    ];

// import 'package:get/get.dart';
// import 'package:toffee_ride/managers/api/api.dart';
// import 'package:toffee_ride/models/response/response.dart';

// abstract class ApiRepository extends GetxController {
//   static ApiRepository get to => Get.find();

//   Future<LoginResponse> loginWithMobile({required String mobile});

//   Future<LoginResponse> loginWithEmail({required String email});

//   Future<RegistrationResponse> registerWithMobile(
//       {required String studentClass,
//       required String studentGender,
//       required String studentclass AppException implements Exception {
//   final _message;
//   final _prefix;

//   AppException([this._message, this._prefix]);

//   @override
//   String toString() {
//     return "$_prefix$_message";
//   }
// }

// class FetchDataException extends AppException {
//   FetchDataException([message])
//       : super(message, "Error During Communication: ");
// }

// class BadRequestException extends AppException {
//   BadRequestException([message]) : super(message, "Invalid Request: ");
// }

// class UnauthorisedException extends AppException {
//   UnauthorisedException([message]) : super(message, "Unauthorised: ");
// }

// class InvalidInputException extends AppException {
//   InvalidInputException([message]) : super(message, "Invalid Input: ");
// }

//   Future<RegistrationResponse> registerWithEmail(
//       {required String studentClass,
//       required String studentGender,
//       required String studentName,
//       required String email});

//   Future<OtpResponse> otpVerificationMobile(
//       {required String otp,
//       required String isLogin,
//       required String mobile,
//       required String mobileCode});

//   Future<OtpResponse> otpVerificationEmail(
//       {required String otp, required String isLogin, required String email});
// }

// class ApiRepositoryImpl extends GetxController implements ApiRepository {
//   //static ApiRepositoryImpl get to => Get.find();

//   ApiBaseHelper helper = ApiBaseHelper();

//   //ApiRepositoryImpl({required this.helper});

//   @override
//   Future<LoginResponse> loginWithMobile({required String mobile}) async {
//     final params = {'mobile': mobile};
//     final response = await helper.get(ApiEndPoints.loginWithMobile, params);
//     return LoginResponse.fromJson(response);
//   }

//   @override
//   Future<LoginResponse> loginWithEmail({required String email}) async {
//     final params = {'email': email};
//     final response = await helper.get(ApiEndPoints.loginWithEmail, params);
//     return LoginResponse.fromJson(response);
//   }

//   @override
//   Future<RegistrationResponse> registerWithMobile(
//       {required String studentClass,
//       required String studentGender,
//       required String studentName,
//       required String mobile}) async {
//     final params = {
//       'mobile': mobile,
//       'gender': studentGender,
//       'child_name': studentName,
//       'class': studentClass
//     };
//     final response = await helper.post(ApiEndPoints.registerWithMobile, params);
//     return RegistrationResponse.fromJson(response);
//   }

//   @override
//   Future<RegistrationResponse> registerWithEmail(
//       {required String studentClass,
//       required String studentGender,
//       required String studentName,
//       required String email}) async {
//     final params = {
//       'email': email,
//       'gender': studentGender,
//       'child_name': studentName,
//       'class': studentClass
//     };
//     final response = await helper.post(ApiEndPoints.registerWithEmail, params);
//     return RegistrationResponse.fromJson(response);
//   }

//   @override
//   Future<OtpResponse> otpVerificationMobile(
//       {required String otp,
//       required String isLogin,
//       required String mobile,
//       required String mobileCode}) async {
//     final params = {
//       'otp': otp,
//       'login': isLogin,
//       'mobile': mobile,
//       'mobile_code': mobileCode,
//     };

//     final response = await helper.get(ApiEndPoints.validateMobileOtp, params);
//     return OtpResponse.fromJson(response);
//   }

//   @override
//   Future<OtpResponse> otpVerificationEmail(
//       {required String otp,
//       required String isLogin,
//       required String email}) async {
//     final params = {
//       'otp': otp,
//       'login': isLogin,
//       'email': email,
//     };

//     final response = await helper.get(ApiEndPoints.validateEmailOtp, params);
//     return OtpResponse.fromJson(response);
//   }
// }

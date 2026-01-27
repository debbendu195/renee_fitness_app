import 'dart:convert';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import '../../../../core/app_routes/app_routes.dart';
import '../../../../helper/shared_prefe/shared_prefe.dart';
import '../../../../service/api_client.dart';
import '../../../../service/api_url.dart';
import '../../../../utils/ToastMsg/toast_message.dart';
import '../../../../utils/app_const/app_const.dart';
import '../../../../utils/app_strings/app_strings.dart';

class AuthController extends GetxController {
  //========== Text Controllers ==========
  Rx<TextEditingController> nameController = TextEditingController().obs;
  Rx<TextEditingController> emailController = TextEditingController().obs;
  Rx<TextEditingController> passwordController = TextEditingController().obs;
  Rx<TextEditingController> confirmPasswordController = TextEditingController().obs;
  Rx<TextEditingController> otpController = TextEditingController().obs;
  Rx<String> gender = 'Male'.obs;

  RxBool isOpen = false.obs;
  RxBool otpLoading = false.obs;

  RxString selectedClass = "Male".obs;

  final List<String> classList = [
    "Male",
    "FeMale",
    "Other",
  ];

  void toggle() {
    isOpen.value = !isOpen.value;
  }

  void selectClass(String value) {
    selectedClass.value = value;
    isOpen.value = false;
  }

  //========== Loading States ==========
  RxBool signUpLoading = false.obs;

  Future<void> signUp() async {
    signUpLoading.value = true;

    Map<String, dynamic> body = {
      "fullname": nameController.value.text.trim(),
      "email": emailController.value.text.trim().toLowerCase(),
      "password": passwordController.value.text,
      "gender": gender.value,
    };

    try {
      var response = await ApiClient.postData(ApiUrl.signUp, jsonEncode(body));

      if (response.statusCode == 200 || response.statusCode == 201) {
        signUpLoading.value = false;
        refresh();

        Map<String, dynamic> jsonResponse = response.body is String
            ? jsonDecode(response.body)
            : response.body;

        if (jsonResponse['success'] == true) {
          showCustomSnackBar(jsonResponse['message'] ?? "Registration successful!", isError: false);

          Get.toNamed(AppRoutes.verifyOtpScreen, arguments: "Sign up");

          clearSignUpData();
        } else {
          showCustomSnackBar(jsonResponse['message'] ?? "Something went wrong.", isError: true);
        }
      } else {
        signUpLoading.value = false;
        refresh();

        showCustomSnackBar("Something went wrong, please try again.", isError: true);
      }
    } catch (e) {
      signUpLoading.value = false;
      refresh();
      showCustomSnackBar("An error occurred. Please try again.", isError: true);
      debugPrint("SignUp Error: $e");
    }
  }

  void clearSignUpData() {
    nameController.value.clear();
    emailController.value.clear();
    passwordController.value.clear();
    confirmPasswordController.value.clear();
    gender.value = 'Male';
  }

  // TextControllers for login
  Rx<TextEditingController> loginEmailController = TextEditingController().obs;
  Rx<TextEditingController> loginPasswordController = TextEditingController().obs;

  // Loading state for login
  RxBool loginLoading = false.obs;

  // Login method
  Future<void> loginUser() async {
    loginLoading.value = true;

    Map<String, String> body = {
      "email": loginEmailController.value.text.trim(),
      "password": loginPasswordController.value.text.trim(),
    };

    try {
      var response = await ApiClient.postData(ApiUrl.signIn, jsonEncode(body));

      if (response.statusCode == 200 || response.statusCode == 201) {
        loginLoading.value = false;
        refresh();

        Map<String, dynamic> jsonResponse;

        if (response.body is String) {
          jsonResponse = jsonDecode(response.body);
        } else {
          jsonResponse = response.body as Map<String, dynamic>;
        }

        showCustomSnackBar(
          jsonResponse['message']?.toString() ?? "Login successful",
          isError: false,
        );

        var dataMap = jsonResponse['data'] as Map<String, dynamic>;
        String accessToken = dataMap['accessToken'].toString();

        await SharePrefsHelper.setString(AppConstants.bearerToken, accessToken);

        Map<String, dynamic> decodedToken = JwtDecoder.decode(accessToken);
        String userId = decodedToken['id'].toString();

        await SharePrefsHelper.setString(AppConstants.userId, userId);

        Get.offAllNamed(AppRoutes.homeScreen);
      } else {
        loginLoading.value = false;
        refresh();

        Map<String, dynamic> errorResponse;

        if (response.body is String) {
          errorResponse = jsonDecode(response.body);
        } else {
          errorResponse = response.body as Map<String, dynamic>;
        }

        showCustomSnackBar(
          errorResponse['message']?.toString() ?? "Login failed",
          isError: true,
        );
      }
    } catch (e) {
      loginLoading.value = false;
      refresh();
      showCustomSnackBar("An error occurred. Please try again.", isError: true);
      debugPrint("Login Error: $e");
    }
  }

  Future<void> forgotPassword() async {

  }

  Future<void> verifyOtp({required String screenName}) async {
    otpLoading.value = true;
    refresh();

    if (otpController.value.text.isEmpty) {
      otpLoading.value = false;
      showCustomSnackBar("OTP cannot be empty.", isError: true);
      return;
    }

    Map<String, dynamic> body = {
      "verificationCode": int.parse(otpController.value.text),
    };

    try {
      var response = await ApiClient.patchData(ApiUrl.verificationOtp, jsonEncode(body));

      otpLoading.value = false;
      refresh();

      if (otpController.value.text.isEmpty) {
        showCustomSnackBar('OTP cannot be empty.', isError: true);
        return;
      }

      Map<String, dynamic> jsonResponse;
      if (response.body is String) {
        jsonResponse = jsonDecode(response.body);
      } else {
        jsonResponse = response.body as Map<String, dynamic>;
      }

      showCustomSnackBar(jsonResponse['message'] ?? "Account verified successfully!", isError: false);

      otpController.value.clear();

      if (screenName == AppStrings.signUp && jsonResponse['data'] != null) {
        var dataMap = jsonResponse['data'] as Map<String, dynamic>;
        String accessToken = dataMap['accessToken'].toString();

        // Save access token
        await SharePrefsHelper.setString(AppConstants.bearerToken, accessToken);

        Map<String, dynamic> decodedToken = JwtDecoder.decode(accessToken);
        String userId = decodedToken['id'].toString();

        await SharePrefsHelper.setString(AppConstants.userId, userId);

        Get.offAllNamed(AppRoutes.homeScreen);
      }
    } catch (e) {
      otpLoading.value = false;
      refresh();
      showCustomSnackBar("An error occurred. Please try again.", isError: true);
      debugPrint("OTP Verification Error: $e");
    }
  }
}

///========== Models ==========
class SignUpAuthModel {
  final String email;
  final String screenName;

  SignUpAuthModel(
      this.email,
      this.screenName,
      );
}

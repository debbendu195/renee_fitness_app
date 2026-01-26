import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:renee_flutter_app/view/components/custom_pin_code/custom_pin_code.dart';
import '../../../../core/app_routes/app_routes.dart';
import '../../../../utils/app_colors/app_colors.dart';
import '../../../components/custom_button/custom_button.dart';
import '../../../components/custom_royel_appbar/custom_royel_appbar.dart';
import '../../../components/custom_text/custom_text.dart';

class VerifyOtpScreen extends StatelessWidget {
  const VerifyOtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomRoyelAppbar(leftIcon: true),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                CustomText(
                  text: "Detroit Fit\n313",
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color: AppColors.primary,
                ),
                SizedBox(height: 20),
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    gradient: LinearGradient(
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight,
                      colors: [
                        Color(0xff1E3A8A),
                        Color(0xff3B82F6),
                        Color(0xffFBBF24),
                      ],
                      stops: [0.1, 1.5, 2],
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      children: [
                        CustomText(
                          text: "VERIFY OTP",
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: AppColors.white,
                          bottom: 20,
                        ),
                        CustomText(
                          text:
                              "Enter the 4-digit code sent to your\nemail or phone number.",
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: AppColors.white,
                          textAlign: TextAlign.center,
                          bottom: 20,
                        ),
                        CustomPinCode(controller: TextEditingController()),
                        SizedBox(height: 20,),
                        CustomButton(
                          onTap: () {
                            Get.toNamed(AppRoutes.setNewPassword);
                          },
                          title: "VERIFY",
                          borderRadius: 30,
                        ),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomText(
                              text: "Didn't receive the code?",
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: AppColors.white,
                            ),
                            CustomText(
                              text: "  Resend",
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Colors.green,
                            ),
                          ],
                        ),
                        TextButton(
                          onPressed: () {
                            Get.toNamed(AppRoutes.loginScreen);
                          },
                          child: CustomText(
                            text: "Back to Login",
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Colors.green,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

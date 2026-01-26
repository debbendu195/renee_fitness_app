import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/app_routes/app_routes.dart';
import '../../../../utils/app_colors/app_colors.dart';
import '../../../components/custom_button/custom_button.dart';
import '../../../components/custom_from_card/custom_from_card.dart';
import '../../../components/custom_royel_appbar/custom_royel_appbar.dart';
import '../../../components/custom_text/custom_text.dart';
class ForgotPassScreen extends StatelessWidget {
  const ForgotPassScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomRoyelAppbar(leftIcon: true,),
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
                          text: "FORGOT PASSWORD",
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: AppColors.white,
                          bottom: 20,
                        ),
                        CustomText(
                          text: "Enter your registered email or phone number and we'll send you a link to reset your password.",
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: AppColors.white,
                          maxLines: 3,
                          textAlign: TextAlign.center,
                          bottom: 20,
                        ),
                        CustomFormCard(
                          title: "EMAIL / PHONE NUMBER",
                          hintText: "Enter your email or phone number",
                          titleColor: AppColors.white,
                          controller: TextEditingController(),
                        ),
                        SizedBox(height: 20),
                        CustomButton(
                          onTap: () {
                            Get.toNamed(AppRoutes.verifyOtpScreen);
                          },
                          title: "SEND RESET LINK",
                          borderRadius: 30,
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

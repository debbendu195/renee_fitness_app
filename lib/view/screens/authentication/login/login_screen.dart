import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:renee_flutter_app/utils/app_icons/app_icons.dart';
import 'package:renee_flutter_app/view/components/custom_button/custom_button.dart';
import 'package:renee_flutter_app/view/components/custom_button/custom_button_two.dart';
import 'package:renee_flutter_app/view/components/custom_from_card/custom_from_card.dart';
import 'package:renee_flutter_app/view/components/custom_image/custom_image.dart';
import 'package:renee_flutter_app/view/components/custom_text/custom_text.dart';
import '../../../../core/app_routes/app_routes.dart';
import '../../../../utils/app_colors/app_colors.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 20,
            right: 20,
            top: 80,
            bottom: 20,
          ),
          child: Center(
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
                          text: "SIGN UP / LOG IN",
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: AppColors.white,
                          bottom: 20,
                        ),
                        CustomFormCard(
                          title: "EMAIL/ PHONE NUMBER",
                          hintText: "Enter your email or phone number",
                          titleColor: AppColors.white,
                          controller: TextEditingController(),
                        ),
                        CustomFormCard(
                          title: "PASSWORD",
                          hintText: "Enter your password",
                          titleColor: AppColors.white,
                          controller: TextEditingController(),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: CustomText(
                            text: "Forget Password",
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff34C759),
                            bottom: 20,
                          ),
                        ),
                        CustomButton(
                          onTap: () {
                            Get.toNamed(AppRoutes.homeScreen);
                          },
                          title: "LOG IN",
                          borderRadius: 30,
                        ),
                        SizedBox(height: 12),
                        CustomButtonTwo(
                          onTap: () {
                            Get.toNamed(AppRoutes.registrationScreen);
                          },
                          title: "SIGN UP",
                          borderRadius: 30,
                          fillColor: AppColors.white,
                          textColor: AppColors.black,
                        ),
                        SizedBox(height: 20),
                        CustomText(
                          text: "CONTINUE WITH",
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: AppColors.white,
                          bottom: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomImage(imageSrc: AppIcons.appleIcon),
                            CustomImage(imageSrc: AppIcons.googleIcon),
                          ],
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

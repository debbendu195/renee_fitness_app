import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:renee_flutter_app/view/components/custom_button/custom_button.dart';
import 'package:renee_flutter_app/view/components/custom_from_card/custom_from_card.dart';
import 'package:renee_flutter_app/view/components/custom_image/custom_image.dart';
import 'package:renee_flutter_app/view/components/custom_loader/custom_loader.dart';
import 'package:renee_flutter_app/view/components/custom_text/custom_text.dart';
import '../../../../core/app_routes/app_routes.dart';
import '../../../../utils/app_colors/app_colors.dart';
import '../../../../utils/app_icons/app_icons.dart';
import '../controller/auth_controller.dart';

class LoginScreen extends StatelessWidget {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final AuthController authController = Get.put(AuthController());

  LoginScreen({super.key});

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
                    child: Form(
                      key: formKey,
                      child: Column(
                        children: [
                          CustomText(
                            text: "SIGN UP / LOG IN",
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: AppColors.white,
                            bottom: 20,
                          ),
                          // Email Field
                          CustomFormCard(
                            title: "EMAIL",
                            hintText: "Enter your email",
                            titleColor: AppColors.white,
                            maxLine: 1,
                            controller: authController.loginEmailController.value,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Email cannot be empty";
                              }
                              return null;
                            },
                          ),
                          CustomFormCard(
                            title: "PASSWORD",
                            hintText: "Enter your password",
                            titleColor: AppColors.white,
                            controller: authController.loginPasswordController.value,
                            isPassword: true,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Password cannot be empty";
                              }
                              return null;
                            },
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: GestureDetector(
                              onTap: (){
                                Get.toNamed(AppRoutes.forgotPassScreen);
                              },
                              child: CustomText(
                                text: "Forget Password",
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff34C759),
                                bottom: 20,
                              ),
                            ),
                          ),
                          Obx(() {
                            return authController.loginLoading.value
                                ? CustomLoader()
                                : CustomButton(
                              onTap: () {
                                if (formKey.currentState!.validate()) {
                                  authController.loginUser();
                                }
                              },
                              title: "LOG IN",
                              borderRadius: 30,
                            );
                          }),
                          SizedBox(height: 12),
                          CustomButton(
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
                              CustomImage(imageSrc: AppIcons.googleIcon),
                            ],
                          ),
                        ],
                      ),
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

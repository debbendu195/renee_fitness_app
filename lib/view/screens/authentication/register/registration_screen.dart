import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:renee_flutter_app/view/components/custom_loader/custom_loader.dart';
import 'package:renee_flutter_app/view/components/custom_royel_appbar/custom_royel_appbar.dart';
import '../../../../utils/app_colors/app_colors.dart';
import '../../../components/custom_button/custom_button.dart';
import '../../../components/custom_from_card/custom_from_card.dart';
import '../../../components/custom_text/custom_text.dart';
import '../controller/auth_controller.dart';

class RegistrationScreen extends StatelessWidget {
  RegistrationScreen({super.key});

  final AuthController authController = Get.put(AuthController());
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

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
                    child: Form(
                      key: formKey,
                      child: Column(
                        children: [
                          CustomText(
                            text: "CREATE ACCOUNT",
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: AppColors.white,
                            bottom: 20,
                          ),
                          // Full Name Field
                          CustomFormCard(
                            title: "FULL NAME",
                            hintText: "Enter your full name",
                            titleColor: AppColors.white,
                            controller: authController.nameController.value,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your full name';
                              }
                              return null;
                            },
                          ),
                          // Email Field
                          CustomFormCard(
                            title: "EMAIL",
                            hintText: "Enter your email",
                            titleColor: AppColors.white,
                            controller: authController.emailController.value,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your email';
                              }
                              return null;
                            },
                          ),
                          // Gender Dropdown
                          Align(
                            alignment: Alignment.topLeft,
                            child: CustomText(
                              text: "Gender",
                              color: AppColors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              textAlign: TextAlign.start,
                            ),
                          ),
                          SizedBox(height: 5),
                          Obx(
                                () => Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 16.w,
                                vertical: 2.h,
                              ),
                              decoration: BoxDecoration(
                                color: AppColors.white,
                                borderRadius: BorderRadius.circular(30.r),
                                border: Border.all(color: Colors.grey.shade300),
                              ),
                              child: DropdownButtonHideUnderline(
                                child: DropdownButton<String>(
                                  value: authController.selectedClass.value,
                                  isExpanded: true,
                                  icon: Icon(
                                    authController.isOpen.value
                                        ? Icons.keyboard_arrow_up
                                        : Icons.keyboard_arrow_down,
                                    color: Colors.grey.shade400,
                                  ),
                                  style: TextStyle(
                                    fontSize: 14.sp,
                                    color: Colors.black87,
                                  ),
                                  onTap: () {
                                    authController.isOpen.toggle();
                                  },
                                  onChanged: (String? newValue) {
                                    if (newValue != null) {
                                      authController.selectedClass.value =
                                          newValue;
                                      authController.isOpen.value = false;
                                    }
                                  },
                                  items: authController.classList
                                      .map<DropdownMenuItem<String>>(
                                        (String value) =>
                                        DropdownMenuItem<String>(
                                          value: value,
                                          child: Text(
                                            value,
                                            style: TextStyle(
                                              fontSize: 14.sp,
                                              color: Colors.black87,
                                            ),
                                          ),
                                        ),
                                  )
                                      .toList(),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          // Password Field
                          CustomFormCard(
                            title: "Password",
                            hintText: "Enter your password",
                            titleColor: AppColors.white,
                            controller: authController.passwordController.value,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your password';
                              }
                              return null;
                            },
                            isPassword: true,
                          ),
                          // Confirm Password Field
                          CustomFormCard(
                            title: "Confirm Password",
                            hintText: "Enter your password",
                            titleColor: AppColors.white,
                            controller: authController.confirmPasswordController.value,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please confirm your password';
                              } else if (value != authController.passwordController.value.text) {
                                return 'Passwords do not match';
                              }
                              return null;
                            },
                            isPassword: true,
                          ),
                          SizedBox(height: 20),
                          // Sign-Up Button
                          Obx(() {
                            return authController.signUpLoading.value
                                ? CustomLoader()
                                : CustomButton(
                              onTap: () {
                                if (formKey.currentState!.validate()) {
                                  authController.signUp();
                                }
                              },
                              title: "SIGN UP",
                              borderRadius: 30,
                            );
                          }),
                          SizedBox(height: 20),
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

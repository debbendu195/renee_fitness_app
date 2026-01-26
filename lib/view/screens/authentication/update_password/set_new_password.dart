import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/app_routes/app_routes.dart';
import '../../../../utils/app_colors/app_colors.dart';
import '../../../components/custom_button/custom_button.dart';
import '../../../components/custom_from_card/custom_from_card.dart';
import '../../../components/custom_royel_appbar/custom_royel_appbar.dart';
import '../../../components/custom_text/custom_text.dart';
class SetNewPassword extends StatelessWidget {
  const SetNewPassword({super.key});

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
                    borderRadius: BorderRadius.circular(17),
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
                          text: "Set a new password",
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: AppColors.white,
                          bottom: 20,
                        ),

                        CustomFormCard(
                          title: "NEW PASSWORD",
                          hintText: "Enter your password",
                          titleColor: AppColors.white,
                          isPassword: true,
                          controller: TextEditingController(),
                        ),
                        CustomFormCard(
                          title: "CONFIRM NEW PASSWORD",
                          hintText: "Enter your password",
                          titleColor: AppColors.white,
                          isPassword: true,
                          controller: TextEditingController(),
                        ),
                        SizedBox(height: 20),
                        CustomButton(
                          onTap: () {
                            Get.toNamed(AppRoutes.loginScreen);
                          },
                          title: "UPDATE PASSWORD",
                          borderRadius: 30,
                        ),
                        TextButton(
                          onPressed: () {
                           // Get.toNamed(AppRoutes.loginScreen);
                          },
                          child: CustomText(
                            text: "CONTINUE AS GUEST",
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

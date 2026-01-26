import 'package:flutter/material.dart';
import 'package:renee_flutter_app/utils/app_colors/app_colors.dart';
import 'package:renee_flutter_app/utils/app_icons/app_icons.dart';
import 'package:renee_flutter_app/view/components/custom_image/custom_image.dart';

import '../../components/custom_royel_appbar/custom_royel_appbar.dart';
import '../../components/custom_text/custom_text.dart';

class ContactUsScreen extends StatelessWidget {
  const ContactUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomRoyelAppbar(leftIcon: true, titleName: "Contact Us"),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomImage(
              imageSrc: AppIcons.getTuch,
              width: MediaQuery.of(context).size.width,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Card(
                elevation: 1,
                color: AppColors.white,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: Color(0xffDBEAFE),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                CustomImage(
                                  imageSrc: AppIcons.callIcon,
                                  width: 48,
                                  height: 48,
                                ),
                                SizedBox(width: 16),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomText(
                                      text: "Call Us",
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: AppColors.textClr,
                                    ),
                                    CustomText(
                                      text: "+8801756666666",
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: AppColors.textClr,
                              size: 24,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: Color(0xffFAF5FF),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                CustomImage(
                                  imageSrc: AppIcons.emailIcon,
                                  width: 48,
                                  height: 48,
                                ),
                                SizedBox(width: 16),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomText(
                                      text: "Email Us",
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: AppColors.textClr,
                                    ),
                                    CustomText(
                                      text: "info@fitzone.com",
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: AppColors.textClr,
                              size: 24,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: Color(0xffF0FDF4),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                CustomImage(
                                  imageSrc: AppIcons.greenMap,
                                  width: 48,
                                  height: 48,
                                ),
                                SizedBox(width: 16),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomText(
                                      text: "Visit Us",
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: AppColors.textClr,
                                    ),
                                    CustomText(
                                      text: "123 Fitness Ave, NY 10001",
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: AppColors.textClr,
                              size: 24,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Card(
                elevation: 1,
                color: AppColors.white,
                child: Column(
                  children: [
                    CustomText(
                      text: "Follow Us",
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: AppColors.black,
                    ),
                    CustomText(
                      text: "Stay connected on social media",
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: AppColors.textClr,
                      bottom: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CustomImage(imageSrc: AppIcons.fb,width: 62,height: 104,),
                        CustomImage(imageSrc: AppIcons.instragramsIcon,width: 62,height: 104,),
                        CustomImage(imageSrc: AppIcons.twiteerIcon,width: 62,height: 104,),
                        CustomImage(imageSrc: AppIcons.youtuICon,width: 62,height: 104,),
                      ],
                    ),
                    SizedBox(height: 20,),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

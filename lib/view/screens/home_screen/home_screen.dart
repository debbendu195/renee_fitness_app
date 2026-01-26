import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:renee_flutter_app/utils/app_const/app_const.dart';
import 'package:renee_flutter_app/view/components/custom_button/custom_button.dart';
import 'package:renee_flutter_app/view/components/custom_button/custom_button_two.dart';
import 'package:renee_flutter_app/view/components/custom_image/custom_image.dart';
import 'package:renee_flutter_app/view/components/custom_netwrok_image/custom_network_image.dart';
import 'package:renee_flutter_app/view/components/custom_text/custom_text.dart';

import '../../../core/app_routes/app_routes.dart';
import '../../../utils/app_colors/app_colors.dart';
import '../../../utils/app_icons/app_icons.dart';
import '../../components/custom_nav_bar/navbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(right: 16, left: 16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CustomNetworkImage(
                          imageUrl: AppConstants.girlsPhoto,
                          height: 60.h,
                          width: 60.w,
                          boxShape: BoxShape.circle,
                        ),
                        SizedBox(width: 16.w),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(
                              text: "Justina",
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: AppColors.black,
                            ),
                            CustomText(
                              text: "Transform Your Body",
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: AppColors.textClr,
                            ),
                          ],
                        ),
                      ],
                    ),
                    InkWell(
                      onTap: (){
                        Get.toNamed(AppRoutes.notificationScreen);
                      },
                      child: CustomImage(
                        imageSrc: AppIcons.notificationIcon,
                        height: 24.h,
                        width: 24.w,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 24.h),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(16.r),
                      width: MediaQuery.sizeOf(context).width / 2.3,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color(0xffF96803),
                            Color(0xffFEDF5F),
                            Color(0xffF3AB0C),
                          ],
                        ),
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                      child: Column(
                        children: [
                          CustomImage(
                            imageSrc: AppIcons.bookIcon,
                            height: 48.h,
                            width: 48.w,
                          ),
                          CustomText(
                            top: 10,
                            text: "Book a Class",
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: AppColors.black,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 16.w),
                    Container(
                      padding: EdgeInsets.all(16.r),
                      width: MediaQuery.sizeOf(context).width / 2.3,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color(0xffF96803),
                            Color(0xffFEDF5F),
                            Color(0xffF3AB0C),
                          ],
                        ),
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                      child: Column(
                        children: [
                          CustomImage(
                            imageSrc: AppIcons.listIcon,
                            height: 48.h,
                            width: 48.w,
                          ),
                          CustomText(
                            top: 10,
                            text: "Book a Class",
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: AppColors.black,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 14.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                      text: "Featured Services",
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: AppColors.black,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: CustomText(
                        text: "View All",
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: AppColors.primary,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 14.h),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(3, (value) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: MediaQuery.sizeOf(context).width / 1.5,
                          decoration: BoxDecoration(
                            color: AppColors.primary,
                            borderRadius: BorderRadius.circular(20.r),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomNetworkImage(
                                imageUrl: AppConstants.ntrition,
                                height: 160,
                                width: MediaQuery.sizeOf(context).width,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20.r),
                                  topRight: Radius.circular(20.r),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 20.0,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomText(
                                      top: 10,
                                      text: "Personal Training",
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                      color: AppColors.white,
                                    ),
                                    CustomText(
                                      top: 4,
                                      text: "One-on-one fitness coaching",
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: AppColors.white,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            CustomText(
                                              text: "\$75",
                                              fontSize: 18,
                                              fontWeight: FontWeight.w700,
                                              color: AppColors.primary3,
                                            ),
                                            CustomText(
                                              text: "/per session",
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                              color: AppColors.white,
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.access_time,
                                              size: 20,
                                              color: AppColors.white,
                                            ),
                                            CustomText(
                                              left: 10,
                                              text: "60 min",
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                              color: AppColors.white,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 16),
                                    CustomButton(onTap: () {}, title: "Book Now"),
                                    SizedBox(height: 16),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
                  ),
                ),
                SizedBox(height: 14.h),
                CustomText(
                  text: "Seasonal Specials",
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  bottom: 10,
                ),
                Container(
                  width: MediaQuery.sizeOf(context).width,
                  padding: EdgeInsets.all(20),
        
                  decoration: BoxDecoration(
                    color: AppColors.pink,
                    borderRadius: BorderRadius.circular(17.r),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(
                            text: "Seasonal Specials",
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                          CustomText(
                            text: "50% OFF",
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                          ),
                          CustomText(
                            text: "First Month Membership",
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            bottom: 12,
                          ),
                          CustomButton(
                            onTap: () {},
                            width: MediaQuery.sizeOf(context).width / 2,
                            title: "Book Now →",
                          ),
                        ],
                      ),
                      CustomButtonTwo(onTap: () {},
                          title: "New",
                          width: 70,
                        height: 40,
                        fillColor: AppColors.white,
                        textColor: AppColors.black,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 14.h),
                CustomText(
                  text: "Connect With Us",
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  bottom: 10,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      CustomImage(imageSrc: AppIcons.instragramIcon),
                      CustomImage(imageSrc: AppIcons.fbIcon),
                      CustomImage(imageSrc: AppIcons.twitterIcon),
                      CustomImage(imageSrc: AppIcons.youtubeIcon),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Navbar(currentIndex: 0),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:renee_flutter_app/utils/app_colors/app_colors.dart';
import 'package:renee_flutter_app/utils/app_icons/app_icons.dart';
import 'package:renee_flutter_app/view/components/custom_button/custom_button_two.dart';
import 'package:renee_flutter_app/view/components/custom_image/custom_image.dart';
import 'package:renee_flutter_app/view/components/custom_text/custom_text.dart';

import '../../../utils/app_const/app_const.dart';
import '../../components/custom_netwrok_image/custom_network_image.dart';
import '../../components/custom_royel_appbar/custom_royel_appbar.dart';

class BookingConfirmedScreen extends StatelessWidget {
  const BookingConfirmedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomRoyelAppbar(leftIcon: true, titleName: "Personal Booking"),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              SizedBox(height: 20),
              Center(child: CustomImage(imageSrc: AppIcons.rightcirkel)),
              CustomText(
                text: "Booking Confirmed!",
                fontSize: 20,
                top: 20,
                fontWeight: FontWeight.w700,
              ),
              CustomText(
                text: "Your consultation has been successfully\nbooked",
                fontSize: 16,
                top: 10,
                maxLines: 2,
                color: AppColors.textClr,
                fontWeight: FontWeight.w400,
                bottom: 20,
              ),
              Card(
                elevation: 1,
                color: AppColors.white,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      CustomNetworkImage(
                        imageUrl: AppConstants.ntrition,
                        height: 72.h,
                        width: 72.w,
                        borderRadius: BorderRadius.all(Radius.circular(13.r)),
                      ),
                      SizedBox(width: 16),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(
                            text: "Personal Training",
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                          CustomText(
                            text: "45 min • \$35",
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: AppColors.textClr,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10.h),
              Card(
                elevation: 1,
                color: AppColors.white,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text: "Date & Time",
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: AppColors.textClr,
                        bottom: 10,
                      ),
                      Row(
                        children: [
                          CustomImage(imageSrc: AppIcons.calenderIcon),
                          CustomText(
                            left: 10,
                            text: "Monday, December 18, 2024",
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: AppColors.black,
                          ),
                        ],
                      ),
                      SizedBox(height: 12,),
                      Row(
                        children: [
                          CustomImage(imageSrc: AppIcons.timeIcon),
                          CustomText(
                            left: 10,
                            text: "10:00 AM - 11:00 AM",
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: AppColors.black,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10.h),
              Card(
                elevation: 1,
                color: AppColors.white,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text: "Location",
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: AppColors.textClr,
                        bottom: 10,
                      ),
                      Row(
                        children: [
                          CustomImage(imageSrc: AppIcons.mapIcon),
                          Column(
                            children: [
                              CustomText(
                                left: 10,
                                text: "Wellness Studio Downtown",
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: AppColors.black,
                              ),
                              CustomText(
                                top: 4,
                                left: 10,
                                text: "245 Park Avenue, 3rd Floor\nNew York, NY 10167",
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: AppColors.textClr,
                                textAlign: TextAlign.start,
                              ),
                            ],
                          ),
                        ],
                      ),
        
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10.h),
              Card(
                elevation: 1,
                color: AppColors.white,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text: "Special Instructions",
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: AppColors.textClr,
                        bottom: 10,
                      ),
                      CustomText(
                        left: 10,
                        text: "Please bring your own yoga mat. Arrive 10 minutes early for check-in. Water bottles available at the studio.",
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        maxLines: 3,
                        color: AppColors.textClr,
                        textAlign: TextAlign.start,
                        bottom: 20,
                      ),

                    ],
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              Container(
                width: MediaQuery.sizeOf(context).width,
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(16),
                    bottomRight: Radius.circular(16),
                  ),
                    gradient: LinearGradient(colors: [
                      Color(0xffF96803),
                      Color(0xffFEDF5F),
                      Color(0xffF3AB0C),
                    ]),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(text: "Service Fee",fontSize: 14,fontWeight: FontWeight.w400,),
                        CustomText(text: "\$45.00",fontSize: 14,fontWeight: FontWeight.w500,),
                      ],
                    ),
                    SizedBox(height: 6,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(text: "Booking Fee",fontSize: 14,fontWeight: FontWeight.w400,),
                        CustomText(text: "\$2.50",fontSize: 14,fontWeight: FontWeight.w500,),
                      ],
                    ),
                    SizedBox(height: 6,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(text: "Tax",fontSize: 14,fontWeight: FontWeight.w400,),
                        CustomText(text: "\$3.50",fontSize: 14,fontWeight: FontWeight.w500,),
                      ],
                    ),
                    Divider(
                      thickness: 1,
                      color: AppColors.white,
                    ),
                    SizedBox(height: 6,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(text: "Total Cost",fontSize: 16,fontWeight: FontWeight.w600,),
                        CustomText(text: "\$51.50",fontSize: 24,fontWeight: FontWeight.w700,),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.h),
              CustomButtonTwo(onTap: (){},title: "Share Booking",),
              SizedBox(height: 20.h),
              Card(
                elevation: 1,
                color: AppColors.white,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.info_rounded,size: 24,color: Colors.blue,),
                          CustomText(
                            left: 8,
                            text: "Cancellation Policy",
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ],
                      ),
                      CustomText(
                        top: 10,
                        text: "Free cancellation up to 24 hours before the session. After that, a 50% cancellation fee applies.",
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        maxLines: 3,
                        color: AppColors.textClr,
                        textAlign: TextAlign.start,
                      ),

                    ],
                  ),
                ),
              ),
              SizedBox(height: 40.h),
            ],
          ),
        ),
      ),
    );
  }
}

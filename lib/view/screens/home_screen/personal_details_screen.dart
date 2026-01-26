import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:renee_flutter_app/utils/app_colors/app_colors.dart';
import 'package:renee_flutter_app/utils/app_icons/app_icons.dart';
import 'package:renee_flutter_app/view/components/custom_button/custom_button.dart';
import 'package:renee_flutter_app/view/components/custom_from_card/custom_from_card.dart';
import 'package:renee_flutter_app/view/components/custom_image/custom_image.dart';
import 'package:renee_flutter_app/view/components/custom_royel_appbar/custom_royel_appbar.dart';
import 'package:renee_flutter_app/view/components/custom_text/custom_text.dart';

import '../../../core/app_routes/app_routes.dart';

class PersonalDetailsScreen extends StatelessWidget {
  const PersonalDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomRoyelAppbar(leftIcon: true, titleName: "Personal Details"),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              text: "Tell us about yourself",
              fontSize: 24,
              fontWeight: FontWeight.w700,
            ),
            CustomText(
              text:
                  "Please provide your contact information to continue with your booking.",
              fontSize: 14,
              fontWeight: FontWeight.w400,
              maxLines: 2,
              top: 10,
              textAlign: TextAlign.start,
              bottom: 20,
            ),

            CustomFormCard(
              title: "Full Name",
              hintText: "Enter your full name",
              prefixIcon: Icon(Icons.person),
              controller: TextEditingController(),
            ),
            CustomFormCard(
              title: "Email Address",
              hintText: "Enter your email address",
              prefixIcon: Icon(Icons.email),
              controller: TextEditingController(),
            ),
            CustomFormCard(
              title: "Phone Number",
              hintText: "Enter your Phone Number",
              prefixIcon: Icon(Icons.call),
              controller: TextEditingController(),
            ),
            Container(
              width: MediaQuery.sizeOf(context).width,
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Color(0xffDBEAFE),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  Checkbox(value: true, onChanged: (value) {}),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text: "Save for Future Bookings",
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        bottom: 4,
                      ),
                      CustomText(
                        text:
                            "Store your information securely to make future\nbookings faster and easier.",
                        fontSize: 12,
                        maxLines: 2,
                        textAlign: TextAlign.start,
                        color: AppColors.textClr,
                        fontWeight: FontWeight.w400,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: MediaQuery.sizeOf(context).width,
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Color(0xffF9FAFB),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Color(0xffE5E7EB)),
              ),
              child: Row(
                children: [
                  CustomImage(imageSrc: AppIcons.privacyIcon),
                  CustomText(
                    left: 12,
                    text:
                        "Your personal information is encrypted and\nstored securely. We'll never share your details\nwithout your permission.",
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    maxLines: 4,
                    textAlign: TextAlign.start,
                    color: AppColors.textClr,
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            CustomButton(onTap: () {
              Get.toNamed(AppRoutes.bookingConfirmedScreen);
            }, title: "Pay Now"),
            Center(
              child: CustomText(
                top: 20,
                text: "By continuing, you agree to our Terms & Conditions",
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: AppColors.textClr,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

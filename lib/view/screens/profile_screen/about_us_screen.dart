import 'package:flutter/material.dart';
import 'package:renee_flutter_app/utils/app_const/app_const.dart';
import 'package:renee_flutter_app/utils/app_icons/app_icons.dart';
import 'package:renee_flutter_app/utils/app_images/app_images.dart';
import 'package:renee_flutter_app/view/components/custom_button/custom_button_two.dart';
import 'package:renee_flutter_app/view/components/custom_image/custom_image.dart';
import 'package:renee_flutter_app/view/components/custom_netwrok_image/custom_network_image.dart';

import '../../../utils/app_colors/app_colors.dart';
import '../../components/custom_royel_appbar/custom_royel_appbar.dart';
import '../../components/custom_text/custom_text.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomRoyelAppbar(leftIcon: true, titleName: "About Us"),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xffF96803),
                    Color(0xffFEDF5F),
                    Color(0xffF3AB0C),
                  ],
                ),
              ),
              child: Column(
                children: [
                  CustomText(
                    text: "About Detroit Fit 313",
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                    color: AppColors.white,
                  ),
                  CustomText(
                    text:
                        "Building stronger communities\nthrough fitness and unity",
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: AppColors.white,
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  CustomImage(imageSrc: AppIcons.tirIcon),
                  CustomText(
                    text: "Our Mission",
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    top: 10,
                  ),
                  CustomText(
                    text:
                        "To empower the Detroit community through accessible, high-quality fitness programs that build not just stronger bodies, but stronger bonds between neighbors and friends.",
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    top: 10,
                    maxLines: 5,
                    textAlign: TextAlign.center,
                    bottom: 10,
                  ),
                  CustomImage(
                    imageSrc: AppImages.ourMissionImage,
                    width: MediaQuery.of(context).size.width,
                    boxFit: BoxFit.cover,
                  ),
                  CustomText(
                    text: "Our Story",
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    top: 10,
                  ),
                  CustomText(
                    text:
                        "Founded in 2018, Detroit Fit 313 began as a grassroots movement to bring quality fitness resources to underserved neighborhoods in Detroit.",
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    top: 10,
                    maxLines: 5,
                    textAlign: TextAlign.center,
                  ),
                  CustomText(
                    text:
                        "What started as outdoor workout sessions in local parks has grown into a thriving community center that serves over 500 members across the Motor City.",
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    top: 10,
                    maxLines: 5,
                    textAlign: TextAlign.center,
                  ),
                  CustomText(
                    text: "Our Values",
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    top: 30,
                    bottom: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CustomImage(imageSrc: AppIcons.community),
                      SizedBox(width: 20),
                      Flexible(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(
                              text: "Community First",
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              bottom: 6,
                            ),
                            CustomText(
                              text:
                                  "Building lasting relationships and supporting each other's fitness journeys.",
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              maxLines: 3,
                              textAlign: TextAlign.start,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CustomImage(imageSrc: AppIcons.inclusive),
                      SizedBox(width: 20),
                      Flexible(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(
                              text: "Inclusive Fitness",
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              bottom: 6,
                            ),
                            CustomText(
                              text:
                                  "Welcoming all fitness levels, ages, and backgrounds without judgment.",
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              maxLines: 3,
                              textAlign: TextAlign.start,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CustomImage(imageSrc: AppIcons.detroit),
                      SizedBox(width: 20),
                      Flexible(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(
                              text: "Detroit Pride",
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              bottom: 6,
                            ),
                            CustomText(
                              text:
                                  "Celebrating our city's resilience and contributing to its continued growth.",
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              maxLines: 3,
                              textAlign: TextAlign.start,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CustomImage(imageSrc: AppIcons.excellence),
                      SizedBox(width: 20),
                      Flexible(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(
                              text: "Excellence",
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              bottom: 6,
                            ),
                            CustomText(
                              text:
                                  "Providing top-quality equipment, training, and facilities for our community.",
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              maxLines: 3,
                              textAlign: TextAlign.start,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  CustomText(
                    text: "Meet Our Team",
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    top: 30,
                    bottom: 30,
                  ),
                  Column(
                    children: List.generate(3, (value) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 16.0),
                        child: Card(
                          elevation: 1,
                          color: AppColors.white,
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Row(
                              children: [
                                CustomNetworkImage(
                                  imageUrl: AppConstants.girlsPhoto,
                                  height: 48,
                                  width: 48,
                                  boxShape: BoxShape.circle,
                                ),
                                SizedBox(width: 16),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomText(
                                      text: "Marcus Johnson",
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                    CustomText(
                                      text: "Founder & Head Trainer",
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.orange,
                                    ),
                                    CustomText(
                                      text:
                                          "15+ years experience, NASM certified",
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: AppColors.textClr,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
                  ),
                  CustomText(
                    text: "Our Facility",
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    top: 20,
                    bottom: 20,
                  ),
                  CustomNetworkImage(
                    imageUrl: AppConstants.ntrition,
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                    borderRadius: BorderRadius.circular(17),
                  ),
                  SizedBox(height: 20),
                  CustomNetworkImage(
                    imageUrl: AppConstants.ntrition,
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                    borderRadius: BorderRadius.circular(17),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width / 2.3,
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Color(0xffF9FAFB),
                          borderRadius: BorderRadius.circular(17),
                        ),
                        child: Column(
                          children: [
                            CustomImage(imageSrc: AppIcons.fitIcon),
                            CustomText(
                              top: 6,
                              text: "5,000 sq ft",
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                            CustomText(
                              text: "Training Space",
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: AppColors.textClr,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width / 2.3,
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Color(0xffF9FAFB),
                          borderRadius: BorderRadius.circular(17),
                        ),
                        child: Column(
                          children: [
                            CustomImage(imageSrc: AppIcons.accessIcon),
                            CustomText(
                              top: 6,
                              text: "24/7 Access",
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                            CustomText(
                              text: "For Members",
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: AppColors.textClr,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xffF96803),
                    Color(0xffFEDF5F),
                    Color(0xffF3AB0C),
                  ],
                ),
              ),
              child: Column(
                children: [
                  CustomText(
                    text: "Join Our Community",
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                    color: AppColors.primary,
                  ),
                  CustomText(
                    text:
                        "Ready to start your fitness journey with\nDetroit Fit 313?",
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: AppColors.black,
                    bottom: 12,
                  ),
                  CustomButtonTwo(
                    onTap: () {},
                    title: "Get Started Today",
                    textColor: AppColors.red,
                    fillColor: AppColors.white,
                  ),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(color: Color(0xff1E293B)),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomImage(imageSrc: AppIcons.fitIcon,imageColor: Colors.orangeAccent,),
                      CustomText(
                        text: "Detroit Fit 313",
                        left: 10,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: AppColors.white,
                      ),
                    ],
                  ),
                  CustomText(
                    top: 10,
                    text: "1234 Fitness Ave, Detroit, MI 48201\n(313) 555-0123",
                    left: 10,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: AppColors.white,
                    bottom: 20,
                  ),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     CustomImage(imageSrc: AppIcons.navFbIcon),
                     SizedBox(width: 16,),
                     CustomImage(imageSrc: AppIcons.navInstraIcon),
                     SizedBox(width: 16,),
                     CustomImage(imageSrc: AppIcons.navTwiterIcon),
                   ],
                 )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

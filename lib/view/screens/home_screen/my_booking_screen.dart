import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:renee_flutter_app/utils/app_const/app_const.dart';
import 'package:renee_flutter_app/view/components/custom_button/custom_button.dart';
import 'package:renee_flutter_app/view/components/custom_netwrok_image/custom_network_image.dart';
import 'package:renee_flutter_app/view/components/custom_royel_appbar/custom_royel_appbar.dart';
import 'package:renee_flutter_app/view/components/custom_text/custom_text.dart';
import '../../../utils/app_colors/app_colors.dart';
import '../../components/custom_nav_bar/navbar.dart';
import '../../components/custom_tab_selected/custom_tab_selected.dart';
import 'controller/home_controller.dart';

class MyBookingScreen extends StatelessWidget {
  MyBookingScreen({super.key});
  final homeController = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomRoyelAppbar(leftIcon: false, titleName: "My Booking"),
      body: Column(
        children: [
          Obx(() {
            return Center(
              child: CustomTabSelector(
                tabs: homeController.myBookingList,
                selectedIndex: homeController.currentIndex.value,
                onTabSelected: (value) {
                  homeController.currentIndex.value = value;
                },
                selectedColor: AppColors.black,
                unselectedColor: AppColors.black,
              ),
            );
          }),

          // Use a Switch or conditional check for the selected index
          Obx(() {
            switch (homeController.currentIndex.value) {
              case 0:
                return _buildBookingCard(context, "Service is Booked", false);
              case 1:
                return _buildBookingCard(context, "Book Again", true);
              default:
                return Container();
            }
          }),
        ],
      ),
      bottomNavigationBar: Navbar(currentIndex: 2),
    );
  }

  // Extracted the card building logic to a method for cleaner code
  Widget _buildBookingCard(BuildContext context, String buttonText, bool showBookAgainButton) {
    return Column(
      children: [
        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: AppColors.primary,
              borderRadius: BorderRadius.circular(17),
            ),
            child: Column(
              children: [
                CustomNetworkImage(
                  imageUrl: AppConstants.ntrition,
                  height: 160,
                  width: MediaQuery.of(context).size.width,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(17),
                    topRight: Radius.circular(17),
                  ),
                ),
                Container(
                  width: MediaQuery.sizeOf(context).width,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: AppColors.primary,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(17),
                      bottomRight: Radius.circular(17),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          text: "Personal Training",
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: AppColors.white,
                          bottom: 4,
                        ),
                        CustomText(
                          text: "One-on-one fitness coaching",
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: AppColors.white,
                          bottom: 8,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                  size: 18,
                                  color: AppColors.white,
                                ),
                                CustomText(
                                  left: 6,
                                  text: "60 min",
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.white,
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 12),
                        showBookAgainButton
                            ? CustomButton(
                          onTap: () {},
                          title: "Book Again",
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          textColor: AppColors.primary,
                        )
                            : Center(
                          child: TextButton(
                            onPressed: () {},
                            child: CustomText(
                              text: buttonText,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: AppColors.green,
                            ),
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
      ],
    );
  }
}
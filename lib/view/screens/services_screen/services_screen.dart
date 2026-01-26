import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:renee_flutter_app/utils/app_colors/app_colors.dart';
import 'package:renee_flutter_app/view/components/custom_royel_appbar/custom_royel_appbar.dart';
import 'package:renee_flutter_app/view/components/custom_text/custom_text.dart';
import 'package:renee_flutter_app/view/components/custom_text_field/custom_text_field.dart';
import '../../../core/app_routes/app_routes.dart';
import '../../../utils/app_const/app_const.dart';
import '../../../utils/app_icons/app_icons.dart';
import '../../components/custom_button/custom_button.dart';
import '../../components/custom_image/custom_image.dart';
import '../../components/custom_nav_bar/navbar.dart';
import '../../components/custom_netwrok_image/custom_network_image.dart';
import '../../components/custom_tab_selected/custom_tab_selected.dart';
import '../home_screen/controller/home_controller.dart';

class ServicesScreen extends StatelessWidget {
   ServicesScreen({super.key});
   final homeController = Get.find<HomeController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomRoyelAppbar(leftIcon: false, titleName: "Our Services"),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            CustomTextField(
              hintText: "Search",
              hintStyle: TextStyle(color: AppColors.black_05),
              prefixIcon: Icon(
                Icons.search,
                size: 30,
                color: AppColors.black_05,
              ),
              fillColor: AppColors.greyLight.withValues(alpha: .3),
            ),
            SizedBox(height: 12,),
            Obx(() {
              return Center(
                child: CustomTabSelector(
                  tabs: homeController.servicesList,
                  selectedIndex: homeController.currentIndex.value,
                  onTabSelected: (value) {
                    homeController.currentIndex.value = value;
                  },
                  selectedColor: AppColors.black,
                  unselectedColor: AppColors.black,
                ),
              );
            }),
            SizedBox(height: 12,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(text: "Filters", fontSize: 14, fontWeight: FontWeight.w600, color: AppColors.black,),
                CustomText(text: "Clear All", fontSize: 14, fontWeight: FontWeight.w600, color: AppColors.primary,),
              ],
            ),
            SizedBox(height: 12,),
            Obx(() {
              return Center(
                child: CustomTabSelector(
                  tabs: homeController.filtersList,
                  selectedIndex: homeController.currentIndex.value,
                  onTabSelected: (value) {
                    homeController.currentIndex.value = value;
                  },
                  selectedColor: AppColors.black,
                  unselectedColor: AppColors.black,
                ),
              );
            }),
            SizedBox(height: 12,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                  text: "42 services available",
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: AppColors.textClr,
                ),
                Row(
                  children: [
                    CustomImage(imageSrc: AppIcons.shortIcon),
                    CustomText(
                      text: "  Sort",
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: AppColors.black,
                    ),
                  ],
                )
              ],
            ),
            Expanded(
              child: ListView(
                children: List.generate(3, (value) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: MediaQuery.sizeOf(context).width,
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
                                CustomButton(onTap: () {
                                  Get.toNamed(AppRoutes.selectDateTimeScreen);
                                }, title: "Book Now"),
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
          ],
        ),
      ),
      bottomNavigationBar: Navbar(currentIndex: 1),
    );
  }
}

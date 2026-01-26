import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:renee_flutter_app/view/screens/home_screen/home_screen.dart';
import '../../../utils/app_colors/app_colors.dart';
import '../../../utils/app_icons/app_icons.dart';
import '../../../utils/app_strings/app_strings.dart';
import '../../screens/home_screen/my_booking_screen.dart';
import '../../screens/profile_screen/profile_screen.dart';
import '../../screens/services_screen/services_screen.dart';
import '../custom_image/custom_image.dart';
import '../custom_text/custom_text.dart';

class Navbar extends StatefulWidget {
  final int currentIndex;

  const Navbar({required this.currentIndex, super.key});

  @override
  State<Navbar> createState() => _NavBarState();
}

class _NavBarState extends State<Navbar> {
  var bottomNavIndex = 0;

  List<String> unselectedIcon = [
    AppIcons.shomeIcon,
    AppIcons.ulistIcon,
    AppIcons.ubookIcon,
    AppIcons.uprofileIcon,
  ];

  List<String> selectedIcon = [
    AppIcons.shomeIcon,
    AppIcons.ulistIcon,
    AppIcons.ubookIcon,
    AppIcons.uprofileIcon,
  ];

  final List<String> userNavText = [
    AppStrings.home,
    AppStrings.services,
    AppStrings.bookings,
    AppStrings.profile
  ];

  @override
  void initState() {
    bottomNavIndex = widget.currentIndex;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90.h,
      decoration: BoxDecoration(
        color: AppColors.white,
      ),
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 22.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(
          unselectedIcon.length,
              (index) => GestureDetector(
            onTap: () => onTap(index),
            child: SizedBox(  // Use SizedBox instead of Expanded
              width: 50.w, // Give a fixed width to each icon
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,  // Centering the items in each column
                children: [
                  CustomImage(
                    imageSrc: index == bottomNavIndex
                        ? selectedIcon[index]
                        : unselectedIcon[index],
                    height: bottomNavIndex == index ? 24.h : 24.h,
                    width: 24.w,
                    imageColor: index == bottomNavIndex
                        ? AppColors.primary
                        : AppColors.black_05,
                  ),
                  CustomText(
                    top: 2,
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    text: userNavText[index],
                    color: index == bottomNavIndex
                        ? AppColors.primary
                        : AppColors.black_05,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void onTap(int index) {
    if (index == 0 && widget.currentIndex != 0) {
      Get.to(() => const HomeScreen());  // Use Get.to instead of Get.offAll
    } else if (index == 1 && widget.currentIndex != 1) {
      Get.to(() =>  ServicesScreen());  // Use Get.to instead of Get.offAll
    } else if (index == 2 && widget.currentIndex != 2) {
      Get.to(() =>  MyBookingScreen());  // Use Get.to instead of Get.offAll
    } else if (index == 3 && widget.currentIndex != 3) {
      Get.to(() => const ProfileScreen());  // Use Get.to instead of Get.offAll
    }
  }
}
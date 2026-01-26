import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:renee_flutter_app/utils/app_const/app_const.dart';
import 'package:renee_flutter_app/view/components/custom_netwrok_image/custom_network_image.dart';
import 'package:renee_flutter_app/view/components/custom_royel_appbar/custom_royel_appbar.dart';
import 'package:renee_flutter_app/view/components/custom_text/custom_text.dart';
import 'package:renee_flutter_app/view/screens/profile_screen/widgets/custom_profile_card.dart';
import '../../../core/app_routes/app_routes.dart';
import '../../components/custom_nav_bar/navbar.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomRoyelAppbar(leftIcon: false, titleName: "Profile"),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Row(
                children: [
                  CustomNetworkImage(
                    imageUrl: AppConstants.girlsPhoto,
                    height: 80,
                    width: 80,
                    boxShape: BoxShape.circle,
                  ),
                  CustomText(
                    left: 8,
                    text: "Mehedi Bin Ab. Salam",
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ],
              ),
              SizedBox(height: 30,),
              CustomProfileCard(
                nameTitle: "Edit Profile",
                onTap: () {
                  Get.toNamed(AppRoutes.editProfileScreen);
                },
              ),
              CustomProfileCard(
                nameTitle: "Change Password",
                onTap: () {
                  Get.toNamed(AppRoutes.changePasswordScreen);
                },
              ),
              CustomProfileCard(
                nameTitle: "Terms of Conditions",
                onTap: () {
                  Get.toNamed(AppRoutes.termsScreen);
                },
              ),
              CustomProfileCard(
                nameTitle: "Privacy Policy",
                onTap: () {
                  Get.toNamed(AppRoutes.privacyScreen);
                },
              ),
              CustomProfileCard(
                nameTitle: "About us",
                onTap: () {
                  Get.toNamed(AppRoutes.aboutUsScreen);
                },
              ),
              CustomProfileCard(
                nameTitle: "Contact Us",
                onTap: () {
                  Get.toNamed(AppRoutes.contactUsScreen);
                },
              ),
              CustomProfileCard(
                nameTitle: "Help & support",
                onTap: () {
                  Get.toNamed(AppRoutes.helpSupportScreen);
                },
              ),
        
              CustomProfileCard(
                nameTitle: "Logout",
                onTap: () {
                  //Get.toNamed(AppRoutes.userMessageListScreen);
                },
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Navbar(currentIndex: 3),
    );
  }
}

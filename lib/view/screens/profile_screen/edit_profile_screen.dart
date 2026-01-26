import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../utils/app_const/app_const.dart';
import '../../../utils/app_colors/app_colors.dart';
import '../../components/custom_button/custom_button.dart';
import '../../components/custom_from_card/custom_from_card.dart';
import '../../components/custom_netwrok_image/custom_network_image.dart';
import '../../components/custom_royel_appbar/custom_royel_appbar.dart';
import 'controller/profile_controller.dart';

class EditProfileScreen extends StatelessWidget {
  EditProfileScreen({super.key});
  final userProfileController = Get.find<ProfileController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomRoyelAppbar(leftIcon: true,titleName: "Edit Profile",),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              Center(
                child: Stack(
                  children: [
                    Obx(() {
                      if (userProfileController.selectedImage.value != null) {
                        return Container(
                          height: 100.h,
                          width: 100.w,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: FileImage(userProfileController.selectedImage.value!),
                              fit: BoxFit.cover,
                            ),
                          ),
                        );
                      } else {
                        return CustomNetworkImage(
                          imageUrl: AppConstants.profileImage,
                          height: 100.h,
                          width: 100.w,
                          boxShape: BoxShape.circle,
                        );
                      }
                    }),
                    Positioned(
                      bottom: 5,
                      right: 0,
                      child: GestureDetector(
                        onTap: () {
                          userProfileController.pickImageFromGallery();
                        },
                        child: Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            color: AppColors.primary,
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(
                            Icons.camera_alt,
                            size: 18,
                            color: AppColors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              CustomFormCard(
                  title: "Name",
                  hintText: "Mehedi Hassan",
                  controller: TextEditingController()),
              CustomFormCard(
                  title: "Email",
                  hintText: "mehedi@gmail.com",
                  controller: TextEditingController()),
              CustomFormCard(
                  title: "Date of Birth",
                  hintText: "12/09/2025",
                  controller: TextEditingController()),
              CustomFormCard(
                  title: "Country",
                  hintText: "Mexico",
                  controller: TextEditingController()),
              CustomFormCard(
                  title: "Phone Number",
                  hintText: "01518602063",
                  controller: TextEditingController()),
              SizedBox(height: 30),
              CustomButton(onTap: (){},title: "SAVE",textColor: AppColors.white,)
        
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:renee_flutter_app/utils/app_icons/app_icons.dart';
import 'package:renee_flutter_app/view/components/custom_button/custom_button_two.dart';
import '../../../../core/app_routes/app_routes.dart';
import '../../../../utils/app_colors/app_colors.dart';
import '../../../../utils/app_images/app_images.dart';
import '../../../components/custom_image/custom_image.dart';
import '../../../components/custom_text/custom_text.dart';
import '../controller/onboarding_controller.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<OnboardingController>();

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // Top Section: Indicators and Skip Button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(width: 60), // Balancing space
                  Obx(
                    () => Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(3, (index) {
                        return Container(
                          margin: const EdgeInsets.only(right: 8),
                          width: controller.currentPage.value == index ? 40 : 8,
                          height: 8,
                          decoration: BoxDecoration(
                            color: controller.currentPage.value == index
                                ? AppColors.primary
                                : AppColors.textClr,
                            borderRadius: BorderRadius.circular(4),
                          ),
                        );
                      }),
                    ),
                  ),
                  TextButton(
                    onPressed: controller.skipOnboarding,
                    child: CustomText(
                      text: "skip",
                      color: AppColors.primary,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),

            // Middle Section: PageView (Images & Text)
            Expanded(
              child: PageView(
                controller: controller.pageController,
                onPageChanged: controller.onPageChanged,
                children: const [
                  OnboardingPage1(),
                  OnboardingPage2(),
                  OnboardingPage3(),
                ],
              ),
            ),

            // Bottom Section: Next Button & Login Link
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  SizedBox(height: 20,),
                  SizedBox(
                    width: 306,
                    height: 56,
                    child: CustomButtonTwo(
                      onTap: controller.currentPage.value == 2
                          ? () {
                              // If on last page, navigate to login screen
                               Get.toNamed(AppRoutes.loginScreen);
                            }
                          : controller.nextPage,
                      borderRadius: 16,
                      textColor: AppColors.white,
                      title: "Next",
                      fontSize: 16,
                      fillColor: AppColors.primary,
                    ),
                  ),
                  const SizedBox(height: 12),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// --- UPDATED PAGES ---

class OnboardingPage1 extends StatelessWidget {
  const OnboardingPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          // Image takes available top space
          Expanded(
            child: Center(
              child: CustomImage(
                imageSrc: AppImages.onboardingOne,
                height: 256,
                width: 288,
              ),
            ),
          ),

          const SizedBox(height: 20),
          const CustomText(
            text: "Welcome to Detroit Fit\n313",
            fontSize: 24,
            fontWeight: FontWeight.w700,
            color: AppColors.black,
          ),
          const SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: const CustomText(
              text: "Your wellness journey starts here.",
              fontSize: 16,
              fontWeight: FontWeight.w400,
              textAlign: TextAlign.center,
              color: AppColors.textClr,
            ),
          ),
          const SizedBox(height: 40),
        ],
      ),
    );
  }
}

class OnboardingPage2 extends StatelessWidget {
  const OnboardingPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Expanded(
            child: Center(
              child: CustomImage(
                imageSrc: AppImages.onboardingTwo,
                height: 300,
                width: 288,
              ),
            ),
          ),
          Row(
            children: [
              CustomImage(imageSrc: AppIcons.righticon),
              CustomText(
                left: 10,
                text: "Personalized wellness plans",
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ],
          ),
          SizedBox(height: 4,),
          Divider(thickness: 1,color: AppColors.textClr.withValues(alpha: .2),),
          SizedBox(height: 4,),
          Row(
            children: [
              CustomImage(imageSrc: AppIcons.righticon),
              CustomText(
                left: 10,
                text: "Flexible scheduling options",
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ],
          ),
          SizedBox(height: 4,),
          Divider(thickness: 1,color: AppColors.textClr.withValues(alpha: .2),),
          SizedBox(height: 4,),
          Row(
            children: [
              CustomImage(imageSrc: AppIcons.righticon),
              CustomText(
                left: 10,
                text: "Expert wellness professionals",
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class OnboardingPage3 extends StatelessWidget {
  const OnboardingPage3({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          // Image takes available top space
          Expanded(
            child: Center(
              child: CustomImage(
                imageSrc: AppImages.onboardingThree,
                height: 250,
                width: 250,
              ),
            ),
          ),

          const SizedBox(height: 20),
          const CustomText(
            text: "Instant Booking & Secure\nPayments",
            fontWeight: FontWeight.w700,
            fontSize: 24,
            color: AppColors.black,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: const CustomText(
              text: "Book your wellness sessions in just a few taps, and pay securely with Stripe or Square.",
              fontWeight: FontWeight.w400,
              fontSize: 16,
              color: AppColors.textClr,
              maxLines: 3,
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 40),
        ],
      ),
    );
  }
}

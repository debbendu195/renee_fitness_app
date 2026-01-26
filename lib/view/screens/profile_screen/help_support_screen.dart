import 'package:flutter/material.dart';
import 'package:renee_flutter_app/utils/app_icons/app_icons.dart';
import 'package:renee_flutter_app/view/components/custom_button/custom_button_two.dart';
import '../../../utils/app_colors/app_colors.dart';
import '../../components/custom_button/custom_button.dart';
import '../../components/custom_from_card/custom_from_card.dart';
import '../../components/custom_image/custom_image.dart';
import '../../components/custom_royel_appbar/custom_royel_appbar.dart';

class HelpSupportScreen extends StatelessWidget {
  const HelpSupportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomRoyelAppbar(leftIcon: true, titleName: "Help & Support"),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
               Center(child: CustomImage(imageSrc: AppIcons.helpImage)),
              SizedBox(height: 30,),
              CustomFormCard(title: "Title",
                  hintText: "Enter the title of your issue",
                  controller: TextEditingController()),
              CustomFormCard(title: "Write in bellow box",
                  hintText: "Write here...",
                  maxLine: 3,
                  controller: TextEditingController()),
              SizedBox(height: 30,),
              CustomButton(onTap: (){},title: "SEND",textColor: AppColors.white,),
              SizedBox(height: 10,),
              CustomButtonTwo(onTap: (){},title: "LIVE CHAT",textColor: Colors.white,),
            ],
          ),
        ),
      ),
    );
  }
}

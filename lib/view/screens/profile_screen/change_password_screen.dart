import 'package:flutter/material.dart';

import '../../components/custom_button/custom_button.dart';
import '../../components/custom_from_card/custom_from_card.dart';
import '../../components/custom_royel_appbar/custom_royel_appbar.dart';

class ChangePasswordScreen extends StatelessWidget {
  const ChangePasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomRoyelAppbar(leftIcon: true, titleName: "Change Password"),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 40.0),
          child: Column(
            children: [
              CustomFormCard(
                title: "Old Password",
                isPassword: true,
                controller: TextEditingController(),
              ),
              CustomFormCard(
                title: "New Password",
                isPassword: true,
                controller: TextEditingController(),
              ),
              CustomFormCard(
                title: "Confirm New Password",
                isPassword: true,
                controller: TextEditingController(),
              ),
              SizedBox(height: 30),
              CustomButton(
                onTap: () {},
                title: "UPDATE PASSWORD",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

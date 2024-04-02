import 'package:findshop/utils/color.dart';
import 'package:findshop/views/auth/login/login.dart';
import 'package:findshop/views/auth/register/register.dart';
import 'package:findshop/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widgets/custom_title_subtile.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 40),
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset('assets/images/welcome.png'),

           const CustomTitleSubTitle(
                title: 'Discover Your Dream Job here',
                subtitle:
                    'Explore all the existing job roles based on your interest and study major'),
            const SizedBox(),
            Row(
              children: [
                Expanded(
                  child: CustomButton(
                    title: 'Login',
                    onTap: () => Get.to(const LoginScreen()),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: CustomButton(
                    title: 'Register',
                    textColor: AppColors.primaryColor,
                    backgroundColor: Colors.transparent,
                    onTap: () => Get.to(const RegisterScreen()),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

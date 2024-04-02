import 'package:findshop/controllers/auth-controller.dart';
import 'package:findshop/views/auth/login/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../widgets/custom_app_bar.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/custom_text_filed.dart';
import '../../../widgets/custom_title_subtile.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final controller = Get.put(AuthController());

    return Scaffold(
      appBar: const CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const CustomTitleSubTitle(
                    title: 'Create Account',
                    subtitle:
                        'Create an account so you can explore all the existing jobs'),
                Form(
                    key: controller.formKey,
                    child: Column(
                      children: [
                        const SizedBox(height: 20),
                        CustomTextFiled(
                          hinttext: 'Email',
                          isRequired: true,
                          onChanged: (email) {
                            controller.email.value = email;
                          },
                        ),
                        const SizedBox(height: 20),
                        CustomTextFiled(
                          hinttext: 'Password',
                          isSecured: true,
                          isRequired: true,
                          onChanged: (password) =>
                              controller.password.value = password,
                        ),
                        const SizedBox(height: 20),
                        CustomTextFiled(
                          hinttext: 'Confirm Password',
                          isSecured: true,
                          isRequired: true,
                          onChanged: (cPassword) =>
                              controller.cPassword.value = cPassword,
                        ),
                        const SizedBox(height: 20),
                        const SizedBox(height: 20),
                        Obx(() => CustomButton(
                            title: 'Sign up',
                            isLoading: controller.isLoading.value,
                            onTap: ()=>  controller.signUp()
                        ),),
                        const SizedBox(
                          height: 5,
                        ),
                        CustomButton(
                          title: 'Already have an account',
                          backgroundColor: Colors.transparent,
                          textColor: Colors.black,
                          onTap: () => Get.offAll(() => const LoginScreen()),
                        ),
                      ],
                    )),
                const SizedBox(),
                const SizedBox(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:findshop/utils/color.dart';
import 'package:findshop/views/auth/register/register.dart';
import 'package:findshop/views/home/home.dart';
import 'package:findshop/widgets/custom_app_bar.dart';
import 'package:findshop/widgets/custom_button.dart';
import 'package:findshop/widgets/custom_text_filed.dart';
import 'package:findshop/widgets/custom_title_subtile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
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
                    title: 'Login here',
                    subtitle: 'Welcome back you’ve been missed!'),
                SizedBox(height: 30),
                Form(
                  key: formKey,
                  child: Column(
                    children: [
                      const CustomTextFiled(
                        hinttext: 'Email',
                        isRequired: true,
                      ),
                      const SizedBox(height: 20),
                      const CustomTextFiled(
                        hinttext: 'Password',
                        isSecured: true,
                        isRequired: true,
                      ),
                      const SizedBox(height: 20),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          'Forgot your password?',
                          style: TextStyle(
                              color: AppColors.primaryColor,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                      const SizedBox(height: 20),
                      CustomButton(
                        title: 'Sign in',
                        onTap: (){
                          if(formKey.currentState!.validate()){
                            Get.to(()=> HomeScreen());
                          }
                        },
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      CustomButton(
                        title: 'Create new account',
                        backgroundColor: Colors.transparent,
                        textColor: Colors.black,
                        onTap: () => Get.to(() => RegisterScreen()),
                      ),
                    ],
                  ),
                ),
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

import 'package:findshop/views/auth/profile_setup/profile_setup.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';

class AuthController extends GetxController {
  RxString email = RxString('');
  RxString password = RxString('');
  RxString cPassword = RxString('');
  RxBool isLoading = RxBool(false);
  RxString fullName = RxString('');
  RxString address = RxString('');
  RxString phoneNumber = RxString('');

  final auth = FirebaseAuth.instance;
  final formKey = GlobalKey<FormState>();

  signUp() async {
    if (formKey.currentState!.validate()) {
      if (password.value != cPassword.value) {
        Get.snackbar(
          'Invalid Password',
          'No match password',
        );
        return;
      }
      isLoading.value = true;
      update();
      try {
        await auth
            .createUserWithEmailAndPassword(
                email: email.value, password: password.value)
            .then((value) {
          isLoading.value = false;
          update();
          if (value.user != null) {
            Get.to(() => const ProfileSetupScreen());
          }
        });
      } on FirebaseAuthException catch (e) {
        isLoading.value = false;
        update();
        Get.snackbar(
          'Error',
          e.message ?? 'Something is wrong',
        );
        print('error ${e.message}');
      }
    }
  }
}

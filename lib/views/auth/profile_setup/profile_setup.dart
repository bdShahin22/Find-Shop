import 'package:findshop/controllers/auth-controller.dart';
import 'package:findshop/utils/color.dart';
import 'package:findshop/views/home/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../widgets/custom_app_bar.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/custom_text_filed.dart';
import '../../../widgets/custom_title_subtile.dart';

class ProfileSetupScreen extends StatelessWidget {
  const ProfileSetupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
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
                    title: 'Profile Setup',
                    subtitle:
                        'Please fill be below details to complete your profile.'),
                const SizedBox(height: 30),
                Form(
                    key: formKey,
                    child: Column(
                      children: [
                        Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            Container(
                              width: 110,
                              height: 110,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border:
                                    Border.all(color: AppColors.primaryColor),
                                image: const DecorationImage(
                                    image: NetworkImage(
                                        'https://s3-alpha-sig.figma.com/img/9dcb/63ba/b2c4b0227d7d7475e3c4ec6553a1775d?Expires=1712534400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=WUJOqYEC~TFOOjAr61Ujptosrvtj822j~4vVHiCiTcrNALGkVXo3tOL0F13-9-ivvWBG5s~VahzEYcy9GOFS8I0D8KHaVyMV2lYlTzPTw1SNYC426LSwvyuf7ZJbocj~eC4ILQZWJff7HTNjsB~TPmfl6ZNM~93AsJ6h9rhpUqQpuLQUwb1Lz1iPdimGzPzlXGwqGnKuHDJUxsKuXoxKlXr~dU6uqrCSNFMJ02syblkInJc~GdzPdIfyDx~0RN4s7aJRN880YlEsVF-YBry-7bdQgfq5vnuLTIW2kJCjfVwwVAr-D5rrJKeC7f9jR~~XYzhXiph3KrLyFH5MvJRGtw__'),
                                    fit: BoxFit.cover),
                              ),
                            ),
                            Container(
                              width: 35,
                              height: 35,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      color: AppColors.primaryColor, width: 2)),
                              child: Icon(
                                Icons.camera_alt,
                                color: AppColors.primaryColor,
                                size: 20,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 30),
                        const CustomTextFiled(
                          hinttext: 'Full Name',

                          isRequired: true,
                        ),
                        const SizedBox(height: 20),
                        const CustomTextFiled(
                          hinttext: 'Address',
                          isRequired: true,
                        ),
                        const SizedBox(height: 20),
                        const CustomTextFiled(
                          hinttext: 'Phone Number',
                          isRequired: true,
                        ),
                        const SizedBox(height: 20),
                        const SizedBox(height: 20),
                        CustomButton(
                          title: 'Complete Setup',
                          onTap: () {
                            if (formKey.currentState!.validate()) {
                              Get.to(() => HomeScreen());
                            }
                          },
                        ),
                        const SizedBox(
                          height: 5,
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

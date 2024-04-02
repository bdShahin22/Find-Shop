import 'package:findshop/utils/color.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final void Function()? onTap;
  final Color? backgroundColor;
  final Color? textColor;
  final bool? isLoading;
  const CustomButton(
      {super.key,
      required this.title,
      this.onTap,
      this.backgroundColor,
      this.textColor,
      this.isLoading});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        decoration: BoxDecoration(
          color: backgroundColor ?? AppColors.primaryColor,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Center(
          child: isLoading == true
              ? Row(
            mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      width: 30,
                      height: 30,
                      child: CircularProgressIndicator(
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Text(
                      'Loading',
                      style: TextStyle(
                          color: textColor ?? Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w800),
                    ),
                  ],
                )
              : Text(
                  title,
                  style: TextStyle(
                      color: textColor ?? Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w800),
                ),
        ),
      ),
    );
  }
}

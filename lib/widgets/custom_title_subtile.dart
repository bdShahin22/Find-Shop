import 'package:flutter/material.dart';
import '../utils/color.dart';

class CustomTitleSubTitle extends StatelessWidget {
  final String title;
  final String subtitle;
  const CustomTitleSubTitle({super.key, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
              color: AppColors.primaryColor,
              fontWeight: FontWeight.bold,
              fontSize: 35),
        ),
        const SizedBox(height: 20),
        Text(
          subtitle,
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.black.withOpacity(.6)),
        ),

      ],
    );
  }
}

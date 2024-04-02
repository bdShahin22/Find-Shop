import 'package:findshop/utils/color.dart';
import 'package:flutter/material.dart';

class CustomTextFiled extends StatelessWidget {
  final String hinttext;
  final bool? isSecured;
  final bool? isRequired;
  final void Function(String)? onChanged;
  const CustomTextFiled(
      {super.key, required this.hinttext, this.isSecured, this.isRequired, this.onChanged});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      validator: isRequired == true
          ? (String? value) {
              if (value == null || value.isEmpty) {
                return 'this filed is required';
              }
              return null;
            }
          : null,
      obscureText: isSecured ?? false,
      decoration: InputDecoration(
        hintText: hinttext,
        filled: true,
        fillColor: AppColors.fieldBackground,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            12,
          ),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            12,
          ),
          borderSide: BorderSide(color: AppColors.primaryColor, width: 2),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            12,
          ),
          borderSide: BorderSide(color: Colors.red, width: 2),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:resp_and_adapt/src/core/styles/app_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key, required this.title, this.backgroundColor, this.titleColor});
  final String title;
  final Color? backgroundColor;
  final Color? titleColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          overlayColor: Colors.black,
          shadowColor: Colors.transparent,
          elevation: 0,
          backgroundColor: backgroundColor ?? const Color(0xFF4EB7F2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        onPressed: () {},
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: AppStyles.styleSemiBold18(context).copyWith(
            color: titleColor ?? const Color(0xFFFFFFFF),
          ),
        ),
      ),
    );
  }
}

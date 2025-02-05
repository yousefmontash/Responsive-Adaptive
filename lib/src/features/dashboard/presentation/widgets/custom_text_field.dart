import 'package:flutter/material.dart';
import 'package:resp_and_adapt/src/core/styles/app_styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key, required this.hint,
  });
  final String hint;

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: const Color(0xFF064061),
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(20),
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(),
        filled: true,
        fillColor: const Color(0xFFFAFAFA),
        hintText: hint,
        hintStyle: AppStyles.styleRegular16.copyWith(
          color: const Color(0xFFAAAAAA),
        ),
      ),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
      borderSide: const BorderSide(color: Colors.transparent),
      borderRadius: BorderRadius.circular(12),
    );
  }
}

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:resp_and_adapt/src/core/styles/app_styles.dart';

class CustomDropdown extends StatefulWidget {
  final void Function(int?)? onChanged;
  final int initialSelectedOption;

  const CustomDropdown(
      {super.key, this.onChanged, this.initialSelectedOption = 0});

  @override
  State<CustomDropdown> createState() => _CustomDropdownState();
}

class _CustomDropdownState extends State<CustomDropdown> {
  List<String> options = ["Monthly", "Hourly"];
  int selectedOption = 0;

  @override
  void initState() {
    super.initState();
    selectedOption = widget.initialSelectedOption;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: const Color(0xFFF1F1F1),
          width: 1,
        ),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<int>(
          icon: Transform.rotate(
            angle: pi / 180 * -90,
            child: const Icon(
              Icons.arrow_back_ios_new_rounded,
              color: Color(0xFF064061),
              size: 24,
            ),
          ),
          padding: const EdgeInsets.all(12),
          borderRadius: BorderRadius.circular(12),
          dropdownColor: Colors.white,
          isDense: true,
          value: selectedOption,
          items: options
              .map(
                (String option) => DropdownMenuItem<int>(
                  value: options.indexOf(option),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        option,
                        style: AppStyles.styleMedium16,
                      ),
                      const Gap(18),
                    ],
                  ),
                ),
              )
              .toList(),
          onChanged: (int? newValue) {
            setState(() {
              selectedOption = newValue ?? 0;
              if (widget.onChanged != null) widget.onChanged!(newValue);
            });
          },
        ),
      ),
    );
  }
}

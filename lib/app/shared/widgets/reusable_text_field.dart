import 'package:flutter/material.dart';

import '../../../core/utilities/constants/app_colour.dart';
import '../../../core/utilities/constants/app_font_size.dart';
import '../../../core/utilities/constants/app_font_weight.dart';
import '../../../core/utilities/constants/app_spacing.dart';

class ReusableTextField extends StatelessWidget {
  const ReusableTextField({super.key, required this.hintText});
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.h10,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColour.lightGary,
        ),
        borderRadius: BorderRadius.circular(
          AppSpacing.h20,
        ),
      ),
      child: TextField(
        decoration: InputDecoration(
            border: const OutlineInputBorder(
              borderSide: BorderSide.none
            ),
            hintText: hintText,
            hintStyle: const TextStyle(
              fontSize: AppFontSize.s16,
              fontWeight: AppFontWeight.w400,
              color: AppColour.lightGary,
              fontFamily: "SFPRODISPLAYREGULAR",
            ),
        ),
      ),
    );
  }
}

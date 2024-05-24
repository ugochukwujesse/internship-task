import 'package:flutter/material.dart';
import '../../../core/utilities/constants/app_colour.dart';
import '../../../core/utilities/constants/app_font_size.dart';
import '../../../core/utilities/constants/app_font_weight.dart';
import '../../../core/utilities/constants/app_spacing.dart';
import '../../../core/utilities/constants/app_text.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({super.key, required this.onPress});
  final Function() onPress;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPress,
        style: ButtonStyle(
          padding: MaterialStateProperty.all(
            const EdgeInsets.only(
              top: 20,
              bottom: 20,
            ),
          ),
          backgroundColor: MaterialStateProperty.all(
            AppColour.primaryGreen,
          ),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                AppSpacing.h20,
              ),
            ),
          ),
        ),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                AppText.createAccount,
                style: TextStyle(
                  fontWeight: AppFontWeight.w600,
                  fontSize: AppFontSize.s16,
                  color: AppColour.white,
                  fontFamily: "SFPRODISPLAYREGULAR",
                ),
              ),
            ),
          ],
        ));
  }
}

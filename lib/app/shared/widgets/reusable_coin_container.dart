import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../core/utilities/constants/app_colour.dart';
import '../../../core/utilities/constants/app_font_size.dart';
import '../../../core/utilities/constants/app_font_weight.dart';
import '../../../core/utilities/constants/app_images.dart';
import '../../../core/utilities/constants/app_spacing.dart';

class ReusableCoinContainer extends StatelessWidget {
  const ReusableCoinContainer({
    super.key,
    required this.text,
    required this.description,
    required this.gradient1,
    required this.gradient2,
  });
  final String text;
  final String description;
  final Color gradient1;
  final Color gradient2;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: AppSpacing.h20,
        left: AppSpacing.h20,
        bottom: AppSpacing.h20,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          AppSpacing.h20,
        ),
        gradient: LinearGradient(
          colors: [
            gradient1,
            gradient2,
          ],
          stops: const [0.0, 1.0],
          begin: FractionalOffset.topRight,
          end: FractionalOffset.bottomLeft,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text,
            style: const TextStyle(
              fontSize: AppFontSize.s18,
              fontWeight: AppFontWeight.w600,
              color: AppColour.white,
              fontFamily: "SFPRODISPLAYREGULAR",
            ),
          ),
          Text(
            description,
            style: const TextStyle(
              fontSize: AppFontSize.s12,
              fontWeight: AppFontWeight.w600,
              color: AppColour.white,
              fontFamily: "SFPRODISPLAYREGULAR",
            ),
          ),
          Expanded(
            child: SvgPicture.asset(
              AppImages.goldIcon,
            ),
          ),
        ],
      ),
    );
  }
}

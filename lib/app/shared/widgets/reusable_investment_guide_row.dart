import 'package:flutter/material.dart';
import '../../../core/utilities/constants/app_colour.dart';
import '../../../core/utilities/constants/app_font_size.dart';
import '../../../core/utilities/constants/app_font_weight.dart';
import '../../../core/utilities/constants/app_spacing.dart';

class ReusableInvestmentGuideRow extends StatelessWidget {
  const ReusableInvestmentGuideRow({
    super.key,
    required this.title,
    required this.description,
    required this.svg,
  });
  final String title;
  final String description;
  final Widget svg;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontSize: AppFontSize.s18,
                  fontWeight: AppFontWeight.w700,
                  color: AppColour.gery,
                  fontFamily: "DMSans",
                ),
              ),
              const SizedBox(
                height: AppSpacing.h4,
              ),
              Text(
                description,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontSize: AppFontSize.s14,
                  fontWeight: AppFontWeight.w400,
                  color: AppColour.gery,
                  fontFamily: "SFPRODISPLAYREGULAR",
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          width: AppSpacing.h30,
        ),
        svg,
      ],
    );
  }
}

import 'package:flutter/material.dart';

import '../../../core/utilities/constants/app_colour.dart';
import '../../../core/utilities/constants/app_font_size.dart';
import '../../../core/utilities/constants/app_font_weight.dart';
import '../../../core/utilities/constants/app_spacing.dart';
import '../../../core/utilities/constants/app_text.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: AppSpacing.h30,
        left: AppSpacing.h30,
        right: AppSpacing.h10,
        bottom: AppSpacing.h22,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          AppSpacing.h20,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 3,
            blurRadius: 20,
            offset:const Offset(0, 5), // changes position of shadow
          ),
        ],
        gradient: const LinearGradient(
          colors: [
            AppColour.cardGradientColour1,
            AppColour.cardGradientColour2,
          ],
          stops: [0.0, 1.0],
          begin: FractionalOffset.topRight,
          end: FractionalOffset.bottomLeft,
        ),
      ),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                AppText.cardDesc,
                style: TextStyle(
                  fontWeight: AppFontWeight.w400,
                  fontSize: AppFontSize.s16,
                  color: AppColour.white,
                  fontFamily: "SFPRODISPLAYREGULAR",
                ),
              ),
              const SizedBox(
                height: AppSpacing.h10,
              ),
              Row(
                children: [
                  const Text(
                    AppText.cardAmount,
                    style: TextStyle(
                      fontWeight: AppFontWeight.w600,
                      fontSize: AppFontSize.s32,
                      color: AppColour.white,
                      fontFamily: "SFPRODISPLAYREGULAR",
                    ),
                  ),
                  const SizedBox(
                    width: AppSpacing.h40,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: AppSpacing.h26,
                      vertical: AppSpacing.h10,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(AppSpacing.h16),
                      color: AppColour.cardInnerContainerColour,
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          AppText.investNow,
                          style: TextStyle(
                            fontWeight: AppFontWeight.w600,
                            fontSize: AppFontSize.s14,
                            color: AppColour.primaryGreen,
                            fontFamily: "SFPRODISPLAYREGULAR",
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

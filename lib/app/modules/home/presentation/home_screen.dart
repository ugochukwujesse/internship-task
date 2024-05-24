import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intership_task/core/utilities/constants/app_colour.dart';
import 'package:intership_task/core/utilities/constants/app_spacing.dart';

import '../../../../core/utilities/constants/app_font_size.dart';
import '../../../../core/utilities/constants/app_font_weight.dart';
import '../../../../core/utilities/constants/app_images.dart';
import '../../../../core/utilities/constants/app_text.dart';
import '../../../shared/widgets/custom_card.dart';
import '../../../shared/widgets/reusable_coin_container.dart';
import '../../../shared/widgets/reusable_investment_guide_row.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  static const routeName = '/homeScreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColour.backgroundColour,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(
              top: AppSpacing.h20,
              left: AppSpacing.h20,
              right: AppSpacing.h20,
              bottom: AppSpacing.h20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset(
                      AppImages.menuIcon,
                    ),
                    SvgPicture.asset(
                      AppImages.notificationIcon,
                    ),
                  ],
                ),
                const SizedBox(
                  height: AppSpacing.h18,
                ),
                const Text(
                  AppText.welcome,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: AppFontSize.s34,
                    fontWeight: AppFontWeight.w700,
                    color: AppColour.black,
                    fontFamily: "DMSans",
                  ),
                ),
                const SizedBox(
                  height: AppSpacing.h20,
                ),
                const CustomCard(),
                const SizedBox(
                  height: AppSpacing.h30,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      AppText.bestPlans,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: AppFontSize.s22,
                        fontWeight: AppFontWeight.w700,
                        color: AppColour.black,
                        fontFamily: "DMSans",
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          AppText.bestPlans,
                          style: TextStyle(
                            fontSize: AppFontSize.s18,
                            fontWeight: AppFontWeight.w500,
                            color: AppColour.red,
                            fontFamily: "DMSans",
                          ),
                        ),
                        SizedBox(
                          width: AppSpacing.h4,
                        ),
                        Icon(
                          Icons.arrow_forward,
                          color: AppColour.red,
                          size: AppSpacing.h20,
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: AppSpacing.h20,
                ),
                SizedBox(
                  height: 170,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: const [
                      ReusableCoinContainer(
                        text: AppText.gold,
                        description: AppText.goldDesc,
                        gradient1: AppColour.goldContainerGradientColour1,
                        gradient2: AppColour.goldContainerGradientColour2,
                      ),
                      SizedBox(
                        width: AppSpacing.h20,
                      ),
                      ReusableCoinContainer(
                        text: AppText.silver,
                        description: AppText.silverDesc,
                        gradient1: AppColour.silverContainerGradientColour1,
                        gradient2: AppColour.silverContainerGradientColour2,
                      ),
                      SizedBox(
                        width: AppSpacing.h20,
                      ),
                      ReusableCoinContainer(
                        text: AppText.platinum,
                        description: AppText.platinumDesc,
                        gradient1: AppColour.platinumContainerGradientColour1,
                        gradient2: AppColour.platinumContainerGradientColour2,
                      ),
                      SizedBox(
                        width: AppSpacing.h20,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: AppSpacing.h40,
                ),
                const Text(
                  AppText.investmentGuide,
                  style: TextStyle(
                    fontFamily: "DMSans",
                    fontSize: AppFontSize.s22,
                    fontWeight: AppFontWeight.w700,
                    color: AppColour.black,
                  ),
                ),
                const SizedBox(
                  height: AppSpacing.h30,
                ),
                ReusableInvestmentGuideRow(
                  title: AppText.basicTypeInvestments,
                  description: AppText.basicTypeInvestmentsDesc,
                  svg: Image.asset(
                    AppImages.ellipse1Png,
                  ),
                ),
                const SizedBox(
                  height: AppSpacing.h14,
                ),
                const Divider(
                  color: AppColour.dividerColour,
                  height: 1,
                ),
                const SizedBox(
                  height: AppSpacing.h14,
                ),
                ReusableInvestmentGuideRow(
                  title: AppText.howMuchTOStartWith,
                  description: AppText.howMuchTOStartWithDesc,
                  svg: Image.asset(
                    AppImages.ellipse2Png,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:intership_task/app/modules/login/presentaion/login_screen.dart';
import 'package:intership_task/core/utilities/constants/app_colour.dart';
import 'package:intership_task/core/utilities/constants/app_font_size.dart';
import 'package:intership_task/core/utilities/constants/app_font_weight.dart';
import 'package:intership_task/core/utilities/constants/app_images.dart';
import 'package:intership_task/core/utilities/constants/app_spacing.dart';
import 'package:intership_task/core/utilities/constants/app_text.dart';

import '../../../shared/widgets/custom_button.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});
  static const routeName = '/onboarding';

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColour.backgroundColour,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            top: AppSpacing.h20,
            left: AppSpacing.h20,
            right: AppSpacing.h20,
            bottom: AppSpacing.h20,
          ),
          child: Column(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      AppImages.onboardingIconPng,
                    ),
                    const Text(
                      AppText.onboardingText,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: AppFontSize.s34,
                        fontWeight: AppFontWeight.w700,
                        color: AppColour.black,
                        fontFamily: "DMSans",
                      ),
                    ),
                    const SizedBox(
                      height: AppSpacing.h16,
                    ),
                    const Text(
                      AppText.onboardingDesc,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: AppFontSize.s16,
                        fontWeight: AppFontWeight.w600,
                        color: AppColour.gery,
                        fontFamily: "SFPRODISPLAYREGULAR",
                      ),
                    )
                  ],
                ),
              ),
              CustomElevatedButton(
                onPress: () {
                  context.go(
                    LoginScreen.routeName,
                  );
                },
              ),
              const Padding(
                padding: EdgeInsets.only(
                  top: AppSpacing.h16,
                  bottom: AppSpacing.h20,
                ),
                child: Center(
                  child: Text(
                    AppText.login,
                    style: TextStyle(
                      fontSize: AppFontSize.s16,
                      fontWeight: AppFontWeight.w600,
                      color: AppColour.primaryGreen,
                      fontFamily: "SFPRODISPLAYREGULAR",
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

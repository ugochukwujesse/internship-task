import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intership_task/app/modules/bottomNav/persentation/bottom_navigation.dart';
import 'package:intership_task/app/shared/widgets/custom_button.dart';
import 'package:intership_task/core/utilities/constants/app_colour.dart';
import 'package:intership_task/core/utilities/constants/app_font_size.dart';
import 'package:intership_task/core/utilities/constants/app_font_weight.dart';
import 'package:intership_task/core/utilities/constants/app_spacing.dart';
import 'package:intership_task/core/utilities/constants/app_text.dart';

import '../../../shared/widgets/reusable_text_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  static const routeName = '/loginScreen';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {},
                child: const Icon(
                  Icons.arrow_back_ios,
                  color: AppColour.black,
                  size: AppSpacing.h22,
                ),
              ),
              const SizedBox(
                height: AppSpacing.h20,
              ),
              const Padding(
                padding: EdgeInsets.only(
                  bottom: AppSpacing.h40,
                ),
                child: Center(
                  child: Column(
                    children: [
                      Text(
                        AppText.createAnAccount,
                        style: TextStyle(
                          fontWeight: AppFontWeight.w700,
                          fontSize: AppFontSize.s34,
                          color: AppColour.black,
                          fontFamily: "DMSans",
                        ),
                      ),
                      SizedBox(
                        height: AppSpacing.h8,
                      ),
                      Text(
                        AppText.createAnAccountDesc,
                        style: TextStyle(
                          fontWeight: AppFontWeight.w600,
                          fontSize: AppFontSize.s16,
                          color: AppColour.gery,
                          fontFamily: "SFPRODISPLAYREGULAR",
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: AppSpacing.h40,
                ),
                child: Column(
                  children: [
                    const ReusableTextField(
                      hintText: AppText.fullName,
                    ),
                    const SizedBox(
                      height: AppSpacing.h18,
                    ),
                    const ReusableTextField(
                      hintText: AppText.emailAddress,
                    ),
                    const SizedBox(
                      height: AppSpacing.h18,
                    ),
                    const ReusableTextField(
                      hintText: AppText.password,
                    ),
                    const SizedBox(
                      height: AppSpacing.h30,
                    ),
                    CustomElevatedButton(
                      onPress: () {
                        context.go(
                          BottomNavWrapper.routeName,
                        );
                      },
                    ),
                    const SizedBox(
                      height: AppSpacing.h20,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: AppSpacing.h24),
                      child: Center(
                        child: Text(
                          AppText.haveAccountDesc,
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
              )
            ],
          ),
        ),
      ),
    );
  }
}

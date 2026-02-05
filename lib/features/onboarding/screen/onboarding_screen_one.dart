import 'package:flutter/material.dart';
import 'package:galaxybooking/core/common/constants/app_colors.dart';
import 'package:galaxybooking/core/common/constants/image_path.dart';
import 'package:galaxybooking/core/common/widgets/custom_button.dart';
import 'package:galaxybooking/core/style/get_text_style.dart';

class OnboardingScreenOne extends StatelessWidget {
  const OnboardingScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryBackground,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children: [
                Image.asset(ImagePath.onboardingImage, height: 614, width: 440),
                Padding(
                  padding: const EdgeInsets.only(top: 62),
                  child: Center(
                    child: Image.asset(
                      ImagePath.splashImage,
                      height: 48,
                      width: 110,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Find & book top professionals.',
                style: getTextStyle(
                  fontSize: 36,
                  color: AppColors.textColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Beauty, wellness, fitness, creative services and more – all in one app.',
                style: getTextStyle(
                  fontSize: 16,
                  color: AppColors.secondaryTextColor,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(height: 56),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: CustomButton(
                title: 'Get Started',
                navigation: '/onboardingScreenTwo',
              ),
            ),
          ],
        ),
      ),
    );
  }
}

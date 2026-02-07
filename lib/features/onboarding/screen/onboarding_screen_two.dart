import 'package:flutter/material.dart';
import 'package:galaxybooking/core/common/constants/app_colors.dart';
import 'package:galaxybooking/core/common/constants/image_path.dart';
import 'package:galaxybooking/core/common/widgets/custom_button.dart';
import 'package:galaxybooking/core/style/get_text_style.dart';
import 'package:get/get.dart';

class OnboardingScreenTwo extends StatelessWidget {
  const OnboardingScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryBackground,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 62, bottom: 16),
                child: Image.asset(
                  ImagePath.splashImage,
                  height: 48,
                  width: 110,
                ),
              ),
            ),
            Image.asset(ImagePath.categoryImage, width: Get.width, height: 512),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'All your favorite pros, one place.',
                style: getTextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.w600,
                  color: AppColors.textColor,
                ),
              ),
            ),
            SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Discover, book, and connect with professionals you trust.',
                style: getTextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: AppColors.secondaryTextColor,
                ),
              ),
            ),
            SizedBox(height: 56),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: CustomButton(
                title: 'Continue',
                onTap: () {
                  Get.offAllNamed('/onboardingScreenThree');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

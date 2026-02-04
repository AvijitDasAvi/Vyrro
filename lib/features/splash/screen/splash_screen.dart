import 'package:flutter/material.dart';
import 'package:galaxybooking/core/common/constants/app_colors.dart';
import 'package:galaxybooking/core/common/constants/image_path.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryBackground,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(ImagePath.splashImage, height: 60, width: 178),
            SizedBox(height: 10),
            Text(
              'Pro booking. Elevated.',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                color: AppColors.secondaryTextColor,
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

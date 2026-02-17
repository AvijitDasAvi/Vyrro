import 'package:flutter/material.dart';
import 'package:galaxybooking/core/common/constants/app_colors.dart';
import 'package:galaxybooking/core/style/get_text_style.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryBackground,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 176, bottom: 8),
              child: Text(
                'Forgot Password',
                style: getTextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 32,
                  color: AppColors.textColor,
                ),
              ),
            ),
            Text(
              "Enter the email associated with your account and we’ll send a reset code.",
              style: getTextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16,
                color: AppColors.secondaryTextColor,
              ),
            ),
            SizedBox(height: 16),
            Container(
              height: 45,
              width: 157,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: AppColors.secondaryTextColor),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

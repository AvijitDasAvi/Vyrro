import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:galaxybooking/core/common/constants/app_colors.dart';
import 'package:galaxybooking/core/common/widgets/custom_button.dart';
import 'package:galaxybooking/core/style/get_text_style.dart';
import 'package:galaxybooking/routes/app_routes.dart';
import 'package:get/get.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryBackground,
      body: Padding(
        padding: const EdgeInsets.only(top: 177, left: 16, right: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Enter The Code',
              style: getTextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 32,
                color: AppColors.textColor,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Check your email/phone and enter the code below.',
              style: getTextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 16,
                color: AppColors.secondaryTextColor,
              ),
            ),
            SizedBox(height: 48),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(
                4,
                (index) => Padding(
                  padding: EdgeInsets.symmetric(horizontal: 4),
                  child: Container(
                    width: 84,
                    height: 64,
                    decoration: BoxDecoration(
                      color: Color(0xFF1E293B),
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Color(0xFF6B7280), width: 1),
                    ),
                    alignment: Alignment.center,
                    child: TextField(
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      maxLength: 1,
                      style: getTextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w600,
                        color: AppColors.textColor,
                      ),
                      decoration: const InputDecoration(
                        counterText: "",
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(
                          vertical: 2,
                          horizontal: 8,
                        ),
                      ),
                      autofocus: index == 0,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 48),
            Center(
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  style: getTextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: AppColors.secondaryTextColor,
                  ),
                  children: [
                    const TextSpan(text: "Code expires in "),
                    TextSpan(
                      text: "00:58",
                      style: getTextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: AppColors.secondaryTextColor,
                      ),
                    ),
                    const TextSpan(text: " • "),
                    TextSpan(
                      text: "Resend code",
                      style: getTextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: AppColors.textColor,
                      ),
                      recognizer: TapGestureRecognizer()..onTap = () {},
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 72),
            CustomButton(
              title: 'Confirm Code',
              onTap: () {
                Get.toNamed(AppRoutes.getCreateNewPasswordScreen());
              },
            ),
          ],
        ),
      ),
    );
  }
}

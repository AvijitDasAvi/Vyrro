import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:galaxybooking/core/common/constants/app_colors.dart';
import 'package:galaxybooking/core/common/widgets/custom_button.dart';
import 'package:galaxybooking/core/common/widgets/custom_text_form_field.dart';
import 'package:galaxybooking/core/style/get_text_style.dart';
import 'package:get/get.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryBackground,
      body: Padding(
        padding: const EdgeInsets.only(
          left: 16,
          right: 16,
          top: 108,
          bottom: 20,
        ),
        child: Column(
          children: [
            Text(
              'Create your Vyrro account',
              style: getTextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w600,
                color: AppColors.textColor,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Tell us about yourself so we can personalize your experience.',
              style: getTextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 16,
                color: AppColors.secondaryTextColor,
              ),
            ),
            SizedBox(height: 32),
            CustomTextFormField(
              label: 'Name',
              isRequired: true,
              hintText: 'Enter your name',
            ),
            SizedBox(height: 24),
            CustomTextFormField(
              label: 'Email',
              isRequired: true,
              hintText: 'Enter your email',
            ),
            SizedBox(height: 24),
            CustomTextFormField(
              label: 'Password',
              isRequired: true,
              hintText: 'Enter your password',
              obscureText: true,
            ),
            SizedBox(height: 24),
            CustomTextFormField(
              label: 'Confirm Password',
              isRequired: true,
              hintText: 'Enter your confirm password',
              obscureText: true,
            ),
            SizedBox(height: 32),
            CustomButton(title: 'Register', onTap: () {}),
            SizedBox(height: 32),
            Center(
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Already have an account? SignIn ",
                      style: getTextStyle(
                        fontSize: 14,
                        color: AppColors.secondaryTextColor,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    TextSpan(
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Get.toNamed('/loginScreen');
                        },
                      text: "SignIn",
                      style: TextStyle(
                        fontSize: 15,
                        color: AppColors.buttonColor,
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.underline,
                        decorationColor: AppColors.buttonColor,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

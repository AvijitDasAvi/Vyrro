import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:galaxybooking/core/common/constants/app_colors.dart';
import 'package:galaxybooking/core/common/widgets/custom_button.dart';
import 'package:galaxybooking/core/common/widgets/custom_text_form_field.dart';
import 'package:galaxybooking/core/style/get_text_style.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryBackground,
      body: Padding(
        padding: EdgeInsets.only(left: 16, right: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome back to Vyrro',
              style: getTextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w600,
                color: AppColors.textColor,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Please sign in to continue.',
              style: getTextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: AppColors.secondaryTextColor,
              ),
            ),
            SizedBox(height: 32),
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
              suffixIcon: Icon(Icons.visibility),
              obscureText: true,
            ),
            SizedBox(height: 12),
            Align(
              alignment: Alignment.topRight,
              child: GestureDetector(
                onTap: () {
                  Get.toNamed('/forgotPasswordScreen');
                },
                child: Text(
                  'Forgot Password?',
                  style: TextStyle(
                    color: AppColors.buttonColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    decoration: TextDecoration.underline,
                    decorationColor: AppColors.buttonColor,
                  ),
                ),
              ),
            ),
            SizedBox(height: 44),
            CustomButton(title: 'Sign In', onTap: () {}),
            SizedBox(height: 32),
            Center(
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Don't have an account? ",
                      style: getTextStyle(
                        fontSize: 14,
                        color: AppColors.secondaryTextColor,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    TextSpan(
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Get.toNamed('/registerScreen');
                        },
                      text: "Register",
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

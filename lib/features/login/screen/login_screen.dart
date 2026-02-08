import 'package:flutter/material.dart';
import 'package:galaxybooking/core/common/constants/app_colors.dart';
import 'package:galaxybooking/core/common/widgets/custom_button.dart';
import 'package:galaxybooking/core/common/widgets/custom_text_form_field.dart';
import 'package:galaxybooking/core/style/get_text_style.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryBackground,
      body: Container(
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
              label: 'Password *',
              isRequired: true,
              hintText: 'Enter your password',
              suffixIcon: Icon(Icons.visibility),
              obscureText: true,
            ),
            SizedBox(height: 12),
            Align(
              alignment: Alignment.topRight,
              child: GestureDetector(
                onTap: () {},
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
            CustomButton(title: 'Sign In', onTap: () {}),
          ],
        ),
      ),
    );
  }
}

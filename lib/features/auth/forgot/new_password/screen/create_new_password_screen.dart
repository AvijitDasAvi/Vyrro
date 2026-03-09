import 'package:flutter/material.dart';
import 'package:galaxybooking/core/common/constants/app_colors.dart';
import 'package:galaxybooking/core/common/widgets/custom_button.dart';
import 'package:galaxybooking/core/common/widgets/custom_text_form_field.dart';
import 'package:galaxybooking/core/style/get_text_style.dart';

class CreateNewPasswordScreen extends StatelessWidget {
  const CreateNewPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryBackground,
      body: Padding(
        padding: EdgeInsets.only(top: 78, left: 16, right: 16, bottom: 30),
        child: Column(
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_back,
                    color: AppColors.textColor,
                    size: 24,
                  ),
                ),
                SizedBox(width: 16),
                Text(
                  'Create New Password',
                  style: getTextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 24,
                    color: AppColors.textColor,
                  ),
                ),
              ],
            ),
            SizedBox(height: 32),
            CustomTextFormField(
              label: 'New Password',
              isRequired: true,
              suffixIcon: Icon(Icons.visibility_off),
              hintText: 'Enter your password',
            ),
            SizedBox(height: 24),
            CustomTextFormField(
              label: 'Confirm Password',
              isRequired: true,
              suffixIcon: Icon(Icons.visibility_off),
              hintText: 'Enter your password',
            ),
            Spacer(),
            CustomButton(title: 'Save New Password', onTap: () {}),
          ],
        ),
      ),
    );
  }
}

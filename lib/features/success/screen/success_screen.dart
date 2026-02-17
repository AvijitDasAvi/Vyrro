import 'package:flutter/material.dart';
import 'package:galaxybooking/core/common/constants/app_colors.dart';
import 'package:galaxybooking/core/common/constants/image_path.dart';
import 'package:galaxybooking/core/common/widgets/custom_button.dart';
import 'package:galaxybooking/core/style/get_text_style.dart';

class SuccessScreen extends StatelessWidget {
  final String hintText;
  final String buttonTitle;
  const SuccessScreen({
    super.key,
    required this.hintText,
    required this.buttonTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryBackground,
      body: Column(
        children: [
          SizedBox(height: 62),
          Image.asset(ImagePath.splashImage, height: 48, width: 110),
          Spacer(),
          Image.asset(ImagePath.successImage, height: 156, width: 156),
          SizedBox(height: 16),
          Text(
            'Success!',
            style: getTextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 32,
              color: AppColors.textColor,
            ),
          ),
          SizedBox(height: 8),
          Text(
            hintText,
            style: getTextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 16,
              color: AppColors.secondaryTextColor,
            ),
            textAlign: TextAlign.center,
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, bottom: 34),
            child: CustomButton(title: buttonTitle, onTap: () {}),
          ),
        ],
      ),
    );
  }
}

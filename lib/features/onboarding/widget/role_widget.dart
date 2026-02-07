import 'package:flutter/material.dart';
import 'package:galaxybooking/core/common/constants/app_colors.dart';
import 'package:galaxybooking/core/style/get_text_style.dart';

class RoleWidget extends StatelessWidget {
  final String icon;
  final String title;
  final Color borderColor;
  final Color iconColor;
  final Color titleColor;
  const RoleWidget({
    super.key,
    required this.icon,
    required this.title,
    required this.borderColor,
    required this.iconColor,
    required this.titleColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 24),
      width: 192,
      decoration: BoxDecoration(
        border: Border.all(color: borderColor, width: 1.0),
        color: AppColors.roleColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          Image.asset(icon, height: 48, width: 48, color: iconColor),
          SizedBox(height: 16),
          Text(
            title,
            style: getTextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: titleColor,
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:galaxybooking/core/common/constants/app_colors.dart';
import 'package:galaxybooking/core/common/constants/icon_path.dart';
import 'package:galaxybooking/core/style/get_text_style.dart';
import 'package:galaxybooking/features/onboarding/controller/onboarding_controller.dart';
import 'package:galaxybooking/features/onboarding/widget/role_widget.dart';
import 'package:get/get.dart';

class OnboardingScreenThree extends StatelessWidget {
  const OnboardingScreenThree({super.key});

  @override
  Widget build(BuildContext context) {
    final OnboardingController controller = Get.put(OnboardingController());
    return Scaffold(
      backgroundColor: AppColors.primaryBackground,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 126, bottom: 8),
              child: Text(
                'How will you use Vyrro?',
                style: getTextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w600,
                  color: AppColors.textColor,
                ),
              ),
            ),

            Text(
              'Select your user type.',
              style: getTextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: AppColors.secondaryTextColor,
              ),
            ),
            SizedBox(height: 200),
            Obx(
              () => Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      controller.selectedRole.value = 0;
                    },
                    child: RoleWidget(
                      icon: IconPath.userLogo,
                      title: "I'm a Client",
                      borderColor: controller.selectedRole.value == 0
                          ? AppColors.buttonColor
                          : AppColors.secondaryTextColor,
                      iconColor: controller.selectedRole.value == 0
                          ? AppColors.buttonColor
                          : AppColors.secondaryTextColor,
                      titleColor: controller.selectedRole.value == 0
                          ? AppColors.buttonColor
                          : AppColors.secondaryTextColor,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      controller.selectedRole.value = 1;
                    },
                    child: RoleWidget(
                      icon: IconPath.subtractLogo,
                      title: "I'm a Pro",
                      borderColor: controller.selectedRole.value == 1
                          ? AppColors.buttonColor
                          : AppColors.secondaryTextColor,
                      iconColor: controller.selectedRole.value == 1
                          ? AppColors.buttonColor
                          : AppColors.secondaryTextColor,
                      titleColor: controller.selectedRole.value == 1
                          ? AppColors.buttonColor
                          : AppColors.secondaryTextColor,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

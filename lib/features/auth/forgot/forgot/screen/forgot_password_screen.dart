import 'package:flutter/material.dart';
import 'package:galaxybooking/features/auth/forgot/forgot/controller/forgot_controller.dart';
import 'package:galaxybooking/features/auth/forgot/otp/screen/otp_screen.dart';
import 'package:get/get.dart';
import 'package:galaxybooking/core/common/constants/app_colors.dart';
import 'package:galaxybooking/core/common/widgets/custom_button.dart';
import 'package:galaxybooking/core/common/widgets/custom_text_form_field.dart';
import 'package:galaxybooking/core/style/get_text_style.dart';

class ForgotPasswordScreen extends StatelessWidget {
  ForgotPasswordScreen({super.key});

  final ForgotController controller = Get.put(ForgotController());

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
            const SizedBox(height: 16),
            Obx(
              () => Container(
                padding: const EdgeInsets.all(6),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: AppColors.secondaryTextColor),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    GestureDetector(
                      onTap: controller.selectEmail,
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                        height: 33,
                        width: 69,
                        decoration: BoxDecoration(
                          color: controller.isEmailSelected.value
                              ? AppColors.buttonColor
                              : AppColors.primaryBackground,
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Center(
                          child: Text(
                            'Email',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: controller.isEmailSelected.value
                                  ? AppColors.primaryBackground
                                  : AppColors.secondaryTextColor,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 6),
                    GestureDetector(
                      onTap: controller.selectPhone,
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                        height: 33,
                        width: 69,
                        decoration: BoxDecoration(
                          color: !controller.isEmailSelected.value
                              ? AppColors.buttonColor
                              : AppColors.primaryBackground,
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Center(
                          child: Text(
                            'Phone',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: !controller.isEmailSelected.value
                                  ? AppColors.primaryBackground
                                  : AppColors.secondaryTextColor,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 48),
            Obx(
              () => AnimatedSwitcher(
                duration: const Duration(milliseconds: 350),
                transitionBuilder: (Widget child, Animation<double> animation) {
                  return FadeTransition(opacity: animation, child: child);
                },
                child: CustomTextFormField(
                  key: ValueKey<bool>(controller.isEmailSelected.value),
                  label: controller.isEmailSelected.value ? 'Email' : 'Phone',
                  hintText: controller.isEmailSelected.value
                      ? 'Enter your email'
                      : 'Enter your phone number',
                  isRequired: true,
                ),
              ),
            ),

            const SizedBox(height: 48),

            CustomButton(
              title: 'Send Code',
              onTap: () {
                Get.to(OtpScreen());
              },
            ),
          ],
        ),
      ),
    );
  }
}

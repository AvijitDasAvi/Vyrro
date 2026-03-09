import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:galaxybooking/core/common/constants/app_colors.dart';
import 'package:galaxybooking/core/common/widgets/custom_button.dart';
import 'package:galaxybooking/core/common/widgets/custom_text_form_field.dart';
import 'package:galaxybooking/core/style/get_text_style.dart';
import 'package:galaxybooking/features/auth/login/controller/login_controller.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());
    final _formKey = GlobalKey<FormState>();

    return Scaffold(
      backgroundColor: AppColors.primaryBackground,
      body: Padding(
        padding: EdgeInsets.only(left: 16, right: 16),
        child: Form(
          key: _formKey,
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
                controller: controller.emailController,
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.next,
                validator: (value) => controller.validateEmail(value),
              ),
              SizedBox(height: 24),
              Obx(
                () => CustomTextFormField(
                  label: 'Password',
                  isRequired: true,
                  hintText: 'Enter your password',
                  controller: controller.passwordController,
                  suffixIcon: IconButton(
                    onPressed: controller.togglePasswordVisibility,
                    icon: Icon(
                      controller.isPasswordHidden.value
                          ? Icons.visibility_off
                          : Icons.visibility,
                      color: AppColors.secondaryTextColor,
                    ),
                  ),
                  obscureText: controller.isPasswordHidden.value,
                  textInputAction: TextInputAction.done,
                  validator: (value) => controller.validatePassword(value),
                ),
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
              Obx(
                () => CustomButton(
                  title: 'Sign In',
                  onTap: controller.isLoading.value
                      ? null
                      : () {
                          if (_formKey.currentState!.validate()) {
                            controller.login();
                          }
                        },
                ),
              ),
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
      ),
    );
  }
}

import 'package:galaxybooking/features/auth/forgot/screen/forgot_password_screen.dart';
import 'package:galaxybooking/features/auth/login/screen/login_screen.dart';
import 'package:galaxybooking/features/auth/register/screen/register_screen.dart';
import 'package:galaxybooking/features/onboarding/screen/onboarding_screen_one.dart';
import 'package:galaxybooking/features/onboarding/screen/onboarding_screen_three.dart';
import 'package:galaxybooking/features/onboarding/screen/onboarding_screen_two.dart';
import 'package:galaxybooking/features/splash/screen/splash_screen.dart';
import 'package:get/get.dart';

class AppRoutes {
  static String splashScreen = '/splashScreen';
  static String onboardingScreenOne = '/onboardingScreenOne';
  static String onboardingScreenTwo = '/onboardingScreenTwo';
  static String onboardingScreenThree = '/onboardingScreenThree';
  static String loginScreen = '/loginScreen';
  static String forgotPasswordScreen = '/forgotPasswordScreen';
  static String registerScreen = '/registerScreen';

  static String getSplashScreen() => splashScreen;
  static String getOnboardingScreenOne() => onboardingScreenOne;
  static String getOnboardingScreenTwo() => onboardingScreenTwo;
  static String getOnboardingScreenThree() => onboardingScreenThree;
  static String getLoginScreen() => loginScreen;
  static String getForgotPasswordScreen() => forgotPasswordScreen;
  static String getRegisterScreen() => registerScreen;

  static List<GetPage> routes = [
    GetPage(name: splashScreen, page: () => SplashScreen()),
    GetPage(
      name: onboardingScreenOne,
      transition: Transition.zoom,
      page: () => OnboardingScreenOne(),
    ),
    GetPage(
      name: onboardingScreenTwo,
      transition: Transition.rightToLeft,
      page: () => OnboardingScreenTwo(),
    ),
    GetPage(
      name: onboardingScreenThree,
      transition: Transition.rightToLeft,
      page: () => OnboardingScreenThree(),
    ),
    GetPage(
      name: loginScreen,
      transition: Transition.rightToLeft,
      page: () => LoginScreen(),
    ),
    GetPage(
      name: forgotPasswordScreen,
      transition: Transition.rightToLeft,
      page: () => ForgotPasswordScreen(),
    ),
    GetPage(
      name: registerScreen,
      transition: Transition.rightToLeft,
      page: () => RegisterScreen(),
    ),
  ];
}

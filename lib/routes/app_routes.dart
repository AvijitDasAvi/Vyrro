import 'package:galaxybooking/features/onboarding/screen/onboarding_screen_one.dart';
import 'package:galaxybooking/features/onboarding/screen/onboarding_screen_two.dart';
import 'package:galaxybooking/features/splash/screen/splash_screen.dart';
import 'package:get/get.dart';

class AppRoutes {
  static String splashScreen = '/splashScreen';
  static String onboardingScreenOne = '/onboardingScreenOne';
  static String onboardingScreenTwo = '/onboardingScreenTwo';

  static String getSplashScreen() => splashScreen;
  static String getOnboardingScreenOne() => onboardingScreenOne;
  static String getOnboardingScreenTwo() => onboardingScreenTwo;

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
  ];
}

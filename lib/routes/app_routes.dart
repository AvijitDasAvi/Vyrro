import 'package:galaxybooking/features/splash/screen/splash_screen.dart';
import 'package:get/get.dart';

class AppRoutes {
  static String splashScreen = '/splashScreen';

  static String getSplashScreen() => splashScreen;

  static List<GetPage> routes = [
    GetPage(name: splashScreen, page: () => SplashScreen()),
  ];
}

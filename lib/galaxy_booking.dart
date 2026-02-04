import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:galaxybooking/routes/app_routes.dart';
import 'package:get/get.dart';

class GalaxyBooking extends StatelessWidget {
  const GalaxyBooking({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Galaxy Booking',
      initialRoute: AppRoutes.getSplashScreen(),
      getPages: AppRoutes.routes,
      builder: EasyLoading.init(),
      themeMode: ThemeMode.system,
    );
  }
}

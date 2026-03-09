import 'package:get/get.dart';

class ForgotController extends GetxController {
  final RxBool isEmailSelected = true.obs;

  void selectEmail() {
    isEmailSelected.value = true;
  }

  void selectPhone() {
    isEmailSelected.value = false;
  }
}

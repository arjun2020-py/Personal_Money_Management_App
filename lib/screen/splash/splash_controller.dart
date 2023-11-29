import 'package:get/get.dart';

import '../on_boarding/screen_on_boarding.dart';

class SplashController extends GetxController {
  RxBool isLodaing = false.obs;

  Future<void> onSplashScreen() async {
    Future.delayed(Duration(seconds: 10), () {
      Get.to(ScreenOnboarding());
    });
  }

  @override
  void onInit() {
    onSplashScreen();
    super.onInit();
  }
}

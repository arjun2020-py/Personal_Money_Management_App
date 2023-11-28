import 'package:get/get.dart';
import 'package:peronal_money_mangment/screen/home/screen_home.dart';

class SplashController extends GetxController {
  RxBool isLodaing = false.obs;

  Future<void> onSplashScreen() async {
    Future.delayed(Duration(seconds: 10), () {
      Get.to(ScreenHome());
    });
  }

  @override
  void onInit() {
    onSplashScreen();
    super.onInit();
  }
}

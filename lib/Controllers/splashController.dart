import 'package:get/get.dart';

class SplashController extends GetxController {

  @override
  void onInit() {
    super.onInit();
 
    Future.delayed(Duration(seconds: 2), () {
      // Example of navigating to another page after a delay
      Get.offNamed('/home'); // Replace with your route name
    });
  }
}

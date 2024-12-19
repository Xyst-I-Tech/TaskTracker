import 'package:get/get.dart';
import 'package:task_tracker_app/login.dart';

class Splashcontroller extends GetxController {
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    Future.delayed(
      Duration(seconds: 2),
      () {
        Get.offAll((LoginPage()));
      },
    );
  }
}

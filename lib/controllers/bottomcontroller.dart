



import 'package:get/get.dart';

class BottomNavController extends GetxController {
  // Reactive variable to track the selected index
  var selectedIndex = 0.obs;

  // Update the selected index
  void changeTabIndex(int index) {
    selectedIndex.value = index;
  }
}

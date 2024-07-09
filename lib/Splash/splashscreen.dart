
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_tracker/Controllers/splashController.dart';

class Splash extends StatelessWidget {
  Splash({super.key});

  final SplashController splashController = Get.put(SplashController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/MyTask.png"),
          ],
        ),
      ),
    );
  }
}













// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:task_tracker/Demo/sign_in.dart';
// import 'package:task_tracker/Utils/app_utils.dart';

// class Splash extends StatelessWidget {
//   Splash({super.key});

//   final SplashController splashController = Get.put(SplashController());

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             AppIcons.logo,
//             const Text('Task Tracker', 
//               style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

// // splash_controller

// class SplashController extends GetxController {
//   @override
//   void onInit() {
//     super.onInit();
//     _navigateToSignUp();
//   }

//   void _navigateToSignUp() {
//     Future.delayed(const Duration(seconds: 3), () {
//       Get.off( LoginPage());
//     });
//   }
// }
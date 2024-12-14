import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_tracker/controllers/splashcontroller.dart';


class SplashScreen extends StatelessWidget {
  const SplashScreen ({super.key});

  @override
  Widget build(BuildContext context) {
   Get.put(Splashcontroller());

    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/Logo.webp', 
              
              // width: 120,
              // height: 120,
            ),
            const SizedBox(height: 20),
            Text(
              'Task Tracker',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color:Color(0xFF58A396), 
                fontFamily: 'Roboto',
              ),
            ),
          ],
        ),
      ),
    );
  }
}

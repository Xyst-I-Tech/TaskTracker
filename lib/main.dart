import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_tracker/bottomnavbar.dart';
import 'package:task_tracker/login.dart';
import 'package:task_tracker/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

 
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
     debugShowCheckedModeBanner: false,
      
     home: 
     //BottomBarPage(),
     SplashScreen(),
     //LoginPage(),
    );
  }
}


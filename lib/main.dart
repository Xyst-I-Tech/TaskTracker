
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_tracker_app/splash.dart';


 void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),  
    );
  }
}


// shared pref - login-logout

// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:task_tracker_app/bottomnavbar.dart';
// import 'package:task_tracker_app/login.dart';
// import 'package:task_tracker_app/splash.dart';
// import 'package:task_tracker_app/view/taskdetails.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// Future<void> main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   SharedPreferences prefs = await SharedPreferences.getInstance();
//   var email = prefs.getString('email');
//   print(email);
//   runApp(MaterialApp(home: email == null ? LoginPage() : BottomNavScreen()));
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp(
//       debugShowCheckedModeBanner: false,

//       home:
//           //TaskDetailsPage()
//           //BottomNavScreen(),
//       // SplashScreen(),
//     LoginPage(),
//     );
//   }
// }



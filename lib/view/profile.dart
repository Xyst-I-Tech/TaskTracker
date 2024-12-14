import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_tracker/controllers/logincontroller.dart';
import 'package:task_tracker/login.dart';
import 'package:task_tracker/utils/apputils.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
     final LoginController loginController = Get.find();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profile',
          style: TextStyle(
              color: AppColors.light,
              fontWeight: FontWeight.bold,
              fontSize: 20),
        ),
        centerTitle: false,
        backgroundColor: AppColors.normal,
        actions: [
          IconButton(
              onPressed: () {
              //  _logout();
               //  loginController.logout();
              },
              icon: AppIcons.logout)
        ],
      ),
    );
  }

  // Function to handle logout and redirect to the login page
  // void _logout() {
  //   // Clear session data (e.g., authentication token, user info)
  //   // Example:
  //   // SharedPreferences prefs = await SharedPreferences.getInstance();
  //   // prefs.remove('user_token');  // Remove the stored user token
  //   // prefs.remove('user_data');   // Remove the stored user data

  //   // Perform any other necessary cleanup

  //   // Redirect to login screen
  //   Get.offAll(() =>
  //       LoginPage()); // Navigate to LoginPage and remove Profile from the stack
  // }
}

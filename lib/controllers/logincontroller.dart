
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:task_tracker_app/bottomnavbar.dart';

class LoginController extends GetxController {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final isPasswordVisible = false.obs;
  final isLoading = false.obs;

  Future<void> login(String email, String password) async {
    if (email.isEmpty || password.isEmpty) {
      Get.snackbar('Error', 'Email and Password cannot be empty',
          snackPosition: SnackPosition.BOTTOM);
      return;
    }

    isLoading.value = true;

    try {
      final url = Uri.parse(''); 
      
        // 'https://vvcmhospitals.codifyinstitute.org/api/users/login'

      final response = await http.post(
        url,
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({
          'email': email,
          'password': password,
        }),
      );

      isLoading.value = false;

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        print('Response: ${response.body}'); // Debugging purpose

        if (data['message'] == 'Login successful') {
          Get.snackbar('Success', 'Login Successful',
              snackPosition: SnackPosition.BOTTOM);
          // Navigate to SplashScreen
          Get.offAll(() => BottomNavScreen());
        } else {
          Get.snackbar('Error', data['message'] ?? 'Invalid credentials',
              snackPosition: SnackPosition.BOTTOM);
        }
      } else {
        print(
            'Unexpected status code: ${response.statusCode}'); // Debugging purpose
        Get.snackbar('Error', 'Server error. Please try again later.',
            snackPosition: SnackPosition.BOTTOM);
      }
    } catch (e) {
      isLoading.value = false;
      Get.snackbar('Error', 'An error occurred: $e',
          snackPosition: SnackPosition.BOTTOM);
    }
  }

  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();
    super.onClose();
  }
}




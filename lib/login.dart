
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_tracker_app/bottomnavbar.dart';
import 'package:task_tracker_app/controllers/logincontroller.dart';
import 'package:task_tracker_app/utils/apputils.dart';

class LoginPage extends StatelessWidget {
  final LoginController controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              // Header Section
              Container(
                width: MediaQuery.of(context).size.width,
                height: 190,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/Frame.png'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 25),
                      Row(
                        children: [
                          Icon(
                            CupertinoIcons.checkmark_circle,
                            color: AppColors.light,
                            size: 35,
                          ),
                          //circle_righthalf_fill, checkmark_circle
                          const SizedBox(width: 8),
                          Text(
                            'TaskTracker',
                            style: TextStyle(
                                color: AppColors.light,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      const SizedBox(height: 25),
                      Text(
                        'User Login',
                        style: TextStyle(
                          color: AppColors.light,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        'Welcome back. Enter your credentials to access\nyour account',
                        style: TextStyle(
                            fontSize: 14,
                            color: AppColors.light,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // Login Form Section =   padding: const EdgeInsets.symmetric(horizontal: 20),
              //  padding: const EdgeInsets.all(15.0),
              Obx(
                () => Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text(
                          'Email Address',
                          style: TextStyle(
                              color: AppColors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      // Email Field
                      TextFormField(
                        controller: controller.emailController,
                        decoration: InputDecoration(
                          hintText: 'Email Address',
                          prefixIcon: const Icon(Icons.email),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      const SizedBox(height: 25),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Password',
                            style: TextStyle(
                                color: AppColors.black,
                                fontWeight: FontWeight.bold)),
                      ),
                      // Password Field
                      TextFormField(
                        controller: controller.passwordController,
                        obscureText: !controller.isPasswordVisible.value,
                        decoration: InputDecoration(
                          hintText: 'Password',
                          prefixIcon: const Icon(Icons.lock),
                          suffixIcon: IconButton(
                            icon: Icon(
                              controller.isPasswordVisible.value
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                            ),
                            onPressed: controller.isPasswordVisible.toggle,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),

                      // Keep me signed in and Forgot Password
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Checkbox(
                                value: true,
                                onChanged: (value) {},
                              ),
                              const Text('Keep me signed in'),
                            ],
                          ),
                          TextButton(
                            onPressed: () {},
                            child: const Text('Forget Password',
                                style: TextStyle(color: Colors.blue)),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),

                      // Login Button
                      InkWell(
                        onTap: (){
                          Get.to(()=>BottomNavScreen());
                        },
                        // controller.isLoading.value
                        //     ? null
                        //     : () => controller.login(
                        //           controller.emailController.text,
                        //           controller.passwordController.text,
                        //         ),
                        child: Container(
                          width: double.infinity,
                          padding: const EdgeInsets.symmetric(vertical: 15),
                          decoration: BoxDecoration(
                            color: const Color(0xFF33A1CC),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: controller.isLoading.value
                                ? const CircularProgressIndicator(
                                    color: Colors.white,
                                  )
                                : const Text(
                                    'Sign in',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                          ),
                        ),
                      ),

                      const SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

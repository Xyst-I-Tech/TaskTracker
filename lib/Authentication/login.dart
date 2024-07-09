import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_tracker/Utils/app_utils.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 190,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/Frame.png'),
                        fit: BoxFit.cover)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 25,
                      ),
                      Row(
                        children: [
                          Icon(CupertinoIcons.circle_righthalf_fill),
                          Text(
                            'TaskTracker',
                            style:
                                TextStyle(color: AppColors.light, fontSize: 18),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Text(
                        'User Login',
                        style: TextStyle(
                            color: AppColors.light,
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Welcome back. Enter your credentials to access\nyour account',
                        style: TextStyle(fontSize: 14, color: AppColors.light),
                      )
                    ],
                  ),
                ),
              ),
              Text('Email Address')
            ],
          ),
        ),
      ),
    );
  }
}
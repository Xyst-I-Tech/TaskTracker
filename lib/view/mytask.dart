import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_tracker/utils/apputils.dart';

class Mytask extends StatelessWidget {
  const Mytask({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('My Task', style: TextStyle(color: AppColors.light,fontWeight: FontWeight.bold, fontSize: 20),),
      centerTitle: false,
      //  leading: Text('My Task', style: TextStyle(color: AppColors.light,fontWeight: FontWeight.bold, fontSize: 20),),
       backgroundColor: AppColors.normal,
      ),
    );
  }
}
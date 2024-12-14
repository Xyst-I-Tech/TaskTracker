import 'package:flutter/material.dart';
import 'package:task_tracker/utils/apputils.dart';

class Createtask extends StatelessWidget {
  const Createtask({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(title: Text('Create Task', style: TextStyle(color: AppColors.light,fontWeight: FontWeight.bold, fontSize: 20),),
      centerTitle: false,
       backgroundColor: AppColors.normal,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_tracker_app/controllers/bottomcontroller.dart';
import 'package:task_tracker_app/utils/apputils.dart';
import 'package:task_tracker_app/view/createtask.dart';
import 'package:task_tracker_app/view/mytask.dart';
import 'package:task_tracker_app/view/profile.dart';
import 'package:task_tracker_app/view/report.dart';

class BottomNavScreen extends StatelessWidget {
  final BottomNavController controller = Get.put(BottomNavController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // Dynamic body based on the selected index
        body: Obx(() {
          return IndexedStack(
            index: controller.selectedIndex.value,
            children: [
               MyTask(),
               CreateTaskPage(),
               ReportPage(),
              Profile(),
            ],
          );
        }),

        // Bottom navigation bar
        bottomNavigationBar: Obx(
          () => BottomNavigationBar(
            currentIndex: controller.selectedIndex.value,
            onTap: controller.changeTabIndex,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.white, // Selected icon and label color
            unselectedItemColor:
                Colors.white, // Unselected icon and label color
            showUnselectedLabels: true,
            backgroundColor: AppColors.normal,
            items: [
              BottomNavigationBarItem(
                icon: AppIcons.myTask,
                //Image.asset('MyTask.png', width: 24, height: 24,color: Colors.white,),
                //  icon: Icon(Icons.home),
                // activeIcon: const Icon(Icons.home, color: Colors.blue),
                label: 'My Task',
              ),
              BottomNavigationBarItem(
                icon: AppIcons.createTask,
                //activeIcon: Icon(Icons.search, color: Colors.blue),
                label: 'Create Task',
              ),
              BottomNavigationBarItem(
                icon: AppIcons.report,
                // activeIcon: Icon(Icons.play_circle_fill, color: Colors.blue),
                label: 'Report',
              ),
              BottomNavigationBarItem(
                icon: AppIcons.profile,
                // activeIcon: Icon(Icons.chat, color: Colors.blue),
                label: 'Profile',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

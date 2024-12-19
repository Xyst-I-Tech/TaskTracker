

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_tracker_app/utils/apputils.dart';
import 'package:task_tracker_app/view/taskform.dart';

class CreateTaskPage extends StatelessWidget {
  CreateTaskPage({Key? key}) : super(key: key);

  // Task JSON Data
  final List<Map<String, dynamic>> tasks = [
    {
      "title": "Add new Field Deadline...",
      "assignedTo": "Sima Patil",
      "status": "In Progress",
      "dueDate": "04/22",
     "icon": 'assets/highPriority.png',
     
    },
    {
      "title": "Add new Field Deadline...",
      "assignedTo": "Sima Patil",
      "status": "In Progress",
      "dueDate": "04/22",
     "icon": 'assets/MediumPriority.png',
    
    },
    {
      "title": "Add new Field Deadline...",
      "assignedTo": "Sima Patil",
      "status": "In Progress",
      "dueDate": "04/22",
      "icon": 'assets/LowPriority.png',
    
    },
  ];

  // Widget for Status Label
  Widget _buildStatusLabel(String status) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: Colors.orange.shade100,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        status,
        style: const TextStyle(
          color: Colors.orange,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  // Task ListTile UI
  Widget _buildTaskTile(Map<String, dynamic> task) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      child: ListTile(
        leading: Container(
          padding: const EdgeInsets.all(8),
          child: Image.asset(
             task['icon'],
            width: 24,
            height: 24,
          ),
        ),
        title: Text(
          task['title'],
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          "Assigned to: ${task['assignedTo']}",
          style: const TextStyle(fontSize: 14),
        ),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildStatusLabel(task['status']),
            const SizedBox(height: 4),
            Text(
              "Due by ${task['dueDate']}",
              style: const TextStyle(color: Colors.grey, fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Create Task',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              
            ),
          ),
          iconTheme: const IconThemeData(color: Colors.white),
          centerTitle: false,
             actions: [
              Padding(
                padding: const EdgeInsets.only(right: 15),
                child: PopupMenuButton(
                  icon:const Icon(Icons.arrow_circle_up_outlined),
                  iconColor: Colors.white,
                  iconSize: 30,
                  color:AppColors.normal,
                    onSelected: (value) {
                    
            
                    },
                    itemBuilder: (context) => [
                          const PopupMenuItem(child: Center(child: Text('Recent'))),
                          const PopupMenuItem(child: Center(child: Text('Low'))),
                          const PopupMenuItem(child: Center(child: Text('Medium'))),
                          const PopupMenuItem(child: Center(child: Text('High'))),
                          const PopupMenuItem(child: Center(child: Text('Open'))),
                          const PopupMenuItem(child: Center(child: Text('In progress'))),
                          const PopupMenuItem(child: Center(child: Text('Done'))),
                          const PopupMenuItem(child: Center(child: Text('Block'))),
                          const PopupMenuItem(child: Center(child: Text('Close'))),
                        ],
                        ),
              ),
                  
            ],
            backgroundColor: AppColors.normal,
      
        ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: ListView.builder(
            itemCount: tasks.length,
            itemBuilder: (context, index) => _buildTaskTile(tasks[index]),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Get.to(const Taskform());
          },
          child: const Icon(Icons.edit),
          backgroundColor: AppColors.normal,
        ),
      ),
    );
  }
}


import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_tracker_app/utils/apputils.dart';
import 'package:task_tracker_app/view/taskdetails.dart';


void main() => runApp(MaterialApp(home: MyTask()));

class MyTask extends StatelessWidget {
  MyTask({Key? key}) : super(key: key);

  // Static JSON data
  final List<Map<String, dynamic>> tasks = [
    {
      "title": "Add new Field Deadline",
      "assignedTo": "Sima Patil",
      "status": "In Progress",
      "dueDate": "04/22",
      "color": Colors.orange,
      "icon": 'assets/highPriority.png',
    },
    {
      "title": "Complete Design Review",
      "assignedTo": "Rahul Sharma",
      "status": "Done",
      "dueDate": "04/25",
      "color": Colors.green,
      "icon": 'assets/MediumPriority.png',
    },
    {
      "title": "Prepare Project Report",
      "assignedTo": "Neha Singh",
      "status": "Open",
      "dueDate": "04/28",
      "color": Colors.blue,
      "icon": 'assets/LowPriority.png',
    },
    {
      "title": "Fix Backend Issues",
      "assignedTo": "Amit Kumar",
      "status": "Close",
      "dueDate": "04/30",
      "color": Colors.grey,
      "icon": 'assets/LowPriority.png',
    },
    {
      "title": "Server Maintenance",
      "assignedTo": "Pooja Reddy",
      "status": "Block",
      "dueDate": "05/01",
      "color": Colors.black,
      "icon": 'assets/highPriority.png',
    }
  ];

  // Widget to build status column
  Widget _buildStatusColumn(String status, Color color, String dueDate) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          decoration: BoxDecoration(
            color: color.withOpacity(0.2),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Text(
            status,
            style: TextStyle(color: color, fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(height: 4), // Spacing
        Text(
          "Due by $dueDate",
          style: const TextStyle(color: Colors.grey, fontSize: 12),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'My Task',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20,
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
                color: AppColors.normal,
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
            itemBuilder: (context, index) {
              final task = tasks[index];
              return GestureDetector(
                onTap: () {
                  Get.to(()=> TaskDetailsPage());
                },
                child: Card(
                  
                  margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                  child: ListTile(
                    leading: Image.asset(
                      task['icon'], 
                      width: 32,
                      height: 32,
                      fit: BoxFit.contain,
                    ),
                    title: Text(
                      task['title'],
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      "Assigned to: ${task['assignedTo']}",
                      style: const TextStyle(fontSize: 14),
                    ),
                    trailing: _buildStatusColumn(
                      task['status'],
                      task['color'],
                      task['dueDate'],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

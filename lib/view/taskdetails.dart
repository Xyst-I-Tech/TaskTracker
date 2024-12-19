

import 'package:flutter/material.dart';
import 'package:task_tracker_app/utils/apputils.dart';

class TaskDetailsPage extends StatelessWidget {
  // Sample JSON data (simulating an API response)
  final Map<String, dynamic> taskDetails = {
    "department": "In Progress",
    "assignBy": "Sima Patil",
    "assignTo": "Android Test",
    "priority": "HIGH",
    "project": "TaskTracker",
    "created": "1-19-2024 12:01:56",
    "modified": "1-27-2024 12:01:56",
    "deadline": "1-27-2024 12:01:56",
    "description": "Add new Field Deadline in Create Task",
    "comments": [
      {
        "user": "Android Test",
        "message": "We need more details",
        "time": "12:00 PM",
        "date": "01-01-2024"
      }
    ]
  };

  TaskDetailsPage({super.key});

  // Widget to build a single detail row
  Widget buildDetailRow(String title, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 100,
            child: Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: Text(
              value,
              style: const TextStyle(color: Colors.black87),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       backgroundColor: AppColors.normal,
        title: const Text(
          "Task Details",
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Card with task details
              Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    children: [
                      buildDetailRow("Department", taskDetails['department']),
                      buildDetailRow("Assign By", taskDetails['assignBy']),
                      buildDetailRow("Assign To", taskDetails['assignTo']),
                      buildDetailRow("Priority", taskDetails['priority']),
                      buildDetailRow("Project", taskDetails['project']),
                      buildDetailRow("Created", taskDetails['created']),
                      buildDetailRow("Modified", taskDetails['modified']),
                      buildDetailRow("Deadline", taskDetails['deadline']),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10),

              // Description field
              Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Descriptions",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        taskDetails['description'],
                        style: const TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10),

              // Comment Section with Add Button
              Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          hintText: "Add your comments",
                          border: const UnderlineInputBorder(),
                          suffixIcon: ElevatedButton(
                            onPressed: () {
                              // Add comment functionality
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blueAccent,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 10),
                            ),
                            child: const Text("Add"),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10),

              // Comments section
              Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Comments",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      const SizedBox(height: 8),
                      ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: taskDetails['comments'].length,
                        itemBuilder: (context, index) {
                          var comment = taskDetails['comments'][index];
                          return ListTile(
                            contentPadding: EdgeInsets.zero,
                            title: Text(
                              comment['user'],
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text(comment['message']),
                            trailing: Column(
                              //crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(comment['time']),
                                Text(comment['date']),
                              ],
                            ),
                          );
                        },
                      ),
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

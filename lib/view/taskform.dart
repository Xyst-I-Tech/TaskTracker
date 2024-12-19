import 'package:flutter/material.dart';
import 'package:task_tracker_app/utils/apputils.dart';

class Taskform extends StatelessWidget {
  const Taskform ({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.normal,
         // leading: const Icon(Icons.arrow_back, color: Colors.white),
          title: const Text(
            "Create Task",
            style: TextStyle(color: Colors.white),
          ),
          iconTheme: const IconThemeData(color: Colors.white),
        ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Task Title Field
                  TextField(
                    decoration: InputDecoration(
                      labelText: "Enter Task Title!",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
          
                  // Task Details Card
                  Card(
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          // Department Dropdown
                          buildFieldRow(
                            "Department",
                            DropdownButton<String>(
                              value: "Android Test",
                              onChanged: (String? newValue) {},
                              items: <String>['Android Test', 'iOS Test', 'Web Test']
                                  .map<DropdownMenuItem<String>>(
                                    (String value) => DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value),
                                    ),
                                  )
                                  .toList(),
                            ),
                          ),
                          const SizedBox(height: 10),
          
                          // Priority Dropdown
                          buildFieldRow(
                            "Priority",
                            DropdownButton<String>(
                              value: "Low",
                              onChanged: (String? newValue) {},
                              items: <String>['Low', 'Medium', 'High']
                                  .map<DropdownMenuItem<String>>(
                                    (String value) => DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value),
                                    ),
                                  )
                                  .toList(),
                            ),
                          ),
                          const SizedBox(height: 10),
          
                          // Project Dropdown
                          buildFieldRow(
                            "Project",
                            DropdownButton<String>(
                              value: "TaskTracker",
                              onChanged: (String? newValue) {},
                              items: <String>['TaskTracker', 'BugTracker', 'DevOps']
                                  .map<DropdownMenuItem<String>>(
                                    (String value) => DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value),
                                    ),
                                  )
                                  .toList(),
                            ),
                          ),
                          const SizedBox(height: 10),
          
                          // Deadline Date
                          buildFieldRow(
                            "Deadline",
                            const Row(
                              children: [
                                Icon(Icons.calendar_today, color: Colors.blue),
                                SizedBox(width: 8),
                                Text(
                                  "1-27-2024  12:01:56",
                                  style: TextStyle(fontSize: 14),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
          
                  // Descriptions Field
                  Card(
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Descriptions",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 10),
                          TextField(
                            maxLines: 3,
                            decoration: InputDecoration(
                              hintText: "Add new Field Deadline in Create Task",
                              border: InputBorder.none,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
          
                  // Create Task Button
                  Center(
                    child: SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          // Task submission logic
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.normal,
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: const Text(
                          "Create Task",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  // Helper widget for label and content
  Widget buildFieldRow(String label, Widget child) {
    return Row(
      children: [
        SizedBox(
          width: 100,
          child: Text(
            label,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
        ),
        Expanded(
          child: child,
        ),
      ],
    );
  }
}

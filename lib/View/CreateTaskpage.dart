// main.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_tracker/Controllers/TaskController.dart';

class CreateTaskPage extends StatelessWidget {
  final TaskController taskController = Get.put(TaskController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create Task'),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Enter Task Title!',
                  ),
                  onChanged: taskController.updateTaskTitle,
                ),
                SizedBox(height: 16),
               
                DropdownButtonFormField<String>(
                  decoration: InputDecoration(),
                  value: taskController.selectedDepartment.value,
                  items: ['Android Test', 'Sample Data']
                      .map((label) => DropdownMenuItem(
                            child: Text(label),
                            value: label,
                          ))
                      .toList(),
                  onChanged: taskController.updateDepartment,
                ),
                SizedBox(height: 16),
                DropdownButtonFormField<String>(
                  decoration: InputDecoration(
                    labelText: 'Priority',
                  ),
                  value: taskController.selectedPriority.value,
                  items: ['Low', 'Medium', 'High']
                      .map((label) => DropdownMenuItem(
                            child: Text(label),
                            value: label,
                          ))
                      .toList(),
                  onChanged: taskController.updatePriority,
                ),
                SizedBox(height: 16),
                Obx(() => TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Deadline',
                        suffixIcon: IconButton(
                          icon: Icon(Icons.calendar_today),
                          onPressed: () async {
                            DateTime? pickedDate = await showDatePicker(
                              context: context,
                              initialDate: taskController.deadline.value,
                              firstDate: DateTime.now(),
                              lastDate: DateTime(2101),
                            );
                            if (pickedDate != null) {
                              taskController.updateDeadline(pickedDate);
                            }
                          },
                        ),
                      ),
                      readOnly: true,
                      controller: TextEditingController(
                        text: taskController.deadline.value
                            .toString()
                            .substring(0, 10),
                      ),
                    )),
                SizedBox(height: 16),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Descriptions',
                  ),
                  onChanged: taskController.updateDescription,
                ),
                SizedBox(height: 32),
                ElevatedButton(
                  onPressed: () {
                    // Handle the task creation logic
                    print('Task Created');
                    print('Title: ${taskController.taskTitle.value}');
                    print('Department: ${taskController.selectedDepartment.value}');
                    print('Priority: ${taskController.selectedPriority.value}');
                    print('Project: ${taskController.selectedProject.value}');
                    print('Deadline: ${taskController.deadline.value}');
                    print('Description: ${taskController.description.value}');
                  },
                  child: Text('Create Task'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

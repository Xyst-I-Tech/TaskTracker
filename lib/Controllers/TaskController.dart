// task_controller.dart
import 'package:get/get.dart';

class TaskController extends GetxController {
  var taskTitle = ''.obs;
  var selectedDepartment = 'Android Test'.obs;
  var selectedPriority = 'Low'.obs;
  var selectedProject = 'TaskTracker'.obs;
  var deadline = DateTime.now().obs;
  var description = ''.obs;

  void updateTaskTitle(String value) {
    taskTitle.value = value;
  }

  void updateDepartment(String? value) {
    if (value != null) {
      selectedDepartment.value = value;
    }
  }

  void updatePriority(String? value) {
    if (value != null) {
      selectedPriority.value = value;
    }
  }

  void updateProject(String? value) {
    if (value != null) {
      selectedProject.value = value;
    }
  }

  void updateDeadline(DateTime value) {
    deadline.value = value;
  }

  void updateDescription(String value) {
    description.value = value;
  }
}

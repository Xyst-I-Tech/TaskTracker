import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AppColors{
  static Color background = const Color.fromRGBO(240, 240, 240, 1);
  static Color black = const Color.fromRGBO(0, 0, 0, 1);
  static Color light = const Color.fromRGBO(230, 245, 250, 1);
  static Color lightHover = const Color.fromRGBO(217, 240, 247, 1);
  static Color lightActive = const Color.fromRGBO(176, 223, 239, 1);
  static Color normal = const Color.fromRGBO(0, 153, 203, 1);
  static Color normalHover = const Color.fromRGBO(0, 138, 183, 1);
  static Color normalActive = const Color.fromRGBO(0, 122, 162, 1);
  static Color dark = const Color.fromRGBO(0, 115, 152, 1);
  static Color darkHover = const Color.fromRGBO(0, 92, 122, 1);
  static Color darkActive = const Color.fromRGBO(0, 69, 91, 1);
  static Color darker = const Color.fromRGBO(0, 54, 71, 1);
}



// class AppIcons{
//   //Logo
//   static Image logo = Image.asset('assets/Logo.webp');

//   //Dark Icons
//   static Image myTaskDark =  Image.asset('assets/MyTaskDark.png');
//   static Image createTaskDark =  Image.asset('assets/CreateTaskDark.png');
//   static Image profileDark =  Image.asset('assets/ProfileDark.png');
//   static Image reportDark =  Image.asset('assets/ReportDark.png');

//   //Priority Icons
//   static Image highPriority =  Image.asset('assets/highPriority.png');
//   static Image mediumPriority =  Image.asset('assets/MediumPriority.png');
//   static Image lowPriority =  Image.asset('assets/LowPriority.png');

//   //Light Icons
//   static Image myTask =  Image.asset('assets/MyTask.png');
//   static Image createTask = Image.asset('assets/CreateTask.png');
//   static Image profile =  Image.asset('assets/Profile.png');
//   static Image report =  Image.asset('assets/Report.png');
//   static Image dropdown =  Image.asset('assets/dropdown.png');
//   static Image logout =  Image.asset('assets/Logout.png');
//   static Image warning =  Image.asset('assets/Warning.png');
//   static Image department =  Image.asset('assets/Department.png');
//   static Image location =  Image.asset('assets/location.png');
//   static Image reportingTo =  Image.asset('assets/ReportingTo.png');
//   static Image email =  Image.asset('assets/email.png');
//   static Image contact =  Image.asset('assets/Contact.png'); 
//   static Image dob =  Image.asset('assets/DOB.png'); 
//   static Image joining =  Image.asset('assets/Join.png');
// }



class AppIcons {
  // Logo
  static Widget logo = _getIconWithColorAndSize('assets/Logo.webp');

  // Dark Icons
  static Widget myTaskDark = _getIconWithColorAndSize('assets/MyTaskDark.png');
  static Widget createTaskDark = _getIconWithColorAndSize('assets/CreateTaskDark.png');
  static Widget profileDark = _getIconWithColorAndSize('assets/ProfileDark.png');
  static Widget reportDark = _getIconWithColorAndSize('assets/ReportDark.png');

  // Priority Icons
  static Widget highPriority = _getIconWithColorAndSize('assets/highPriority.png');
  static Widget mediumPriority = _getIconWithColorAndSize('assets/MediumPriority.png');
  static Widget lowPriority = _getIconWithColorAndSize('assets/LowPriority.png');

  // Light Icons
  static Widget myTask = _getIconWithColorAndSize('assets/MyTask.png');
  static Widget createTask = _getIconWithColorAndSize('assets/CreateTask.png');
  static Widget profile = _getIconWithColorAndSize('assets/Profile.png');
  static Widget report = _getIconWithColorAndSize('assets/Report.png');
  static Widget dropdown = _getIconWithColorAndSize('assets/dropdown.png');
  static Widget logout = _getIconWithColorAndSize('assets/Logout.png');
  static Widget warning = _getIconWithColorAndSize('assets/Warning.png');
  static Widget department = _getIconWithColorAndSize('assets/Department.png');
  static Widget location = _getIconWithColorAndSize('assets/location.png');
  static Widget reportingTo = _getIconWithColorAndSize('assets/ReportingTo.png');
  static Widget email = _getIconWithColorAndSize('assets/email.png');
  static Widget contact = _getIconWithColorAndSize('assets/Contact.png');
  static Widget dob = _getIconWithColorAndSize('assets/DOB.png');
  static Widget joining = _getIconWithColorAndSize('assets/Join.png');
  
  // Helper method to apply white color and size 24 to each icon
  static Widget _getIconWithColorAndSize(String imagePath) {
    return SizedBox(
      height: 25,
      width: 25,
      child: ColorFiltered(
        colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn), // Apply white color
        child: Image.asset(
          imagePath,fit: BoxFit.contain
        ),
      ),
    );
  }
}

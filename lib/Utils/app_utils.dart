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



class AppIcons{
  //Logo
  static Image logo = Image.asset('assets/Logo.webp');

  //Dark Icons
  static Image myTaskDark =  Image.asset('assets/MyTaskDark.png');
  static Image createTaskDark =  Image.asset('assets/CreateTaskDark.png');
  static Image profileDark =  Image.asset('assets/ProfileDark.png');
  static Image reportDark =  Image.asset('assets/ReportDark.png');

  //Priority Icons
  static Image highPriority =  Image.asset('assets/highPriority.png');
  static Image mediumPriority =  Image.asset('assets/MediumPriority.png');
  static Image lowPriority =  Image.asset('assets/LowPriority.png');

  //Light Icons
  static Image myTask =  Image.asset('assets/MyTask.png');
  static Image createTask = Image.asset('assets/CreateTask.png');
  static Image profile =  Image.asset('assets/Profile.png');
  static Image report =  Image.asset('assets/Report.png');
  static Image dropdown =  Image.asset('assets/dropdown.png');
  static Image logout =  Image.asset('assets/Logout.png');
  static Image warning =  Image.asset('assets/Warning.png');
  static Image department =  Image.asset('assets/Department.png');
  static Image location =  Image.asset('assets/location.png');
  static Image reportingTo =  Image.asset('assets/ReportingTo.png');
  static Image email =  Image.asset('assets/email.png');
  static Image contact =  Image.asset('assets/Contact.png'); 
  static Image dob =  Image.asset('assets/DOB.png'); 
  static Image joining =  Image.asset('assets/Join.png');
}


import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_tracker_app/utils/apputils.dart';

class ProfileController extends GetxController {
  var isLoading = true.obs;
  var profileData = {}.obs;

  @override
  void onInit() {
    super.onInit();
    fetchProfileData();
  }

  void fetchProfileData() async {
    try {
      isLoading(true);
      // Simulating an API call with a delay
      await Future.delayed(Duration(seconds: 2));
      profileData.value = {
        "name": "Android Test",
        "email": "androidtest@gmail.com",
        "department": "Mobile",
        "location": "Thane",
        "reportingTo": "Sima Patil",
        "contactNo": "9876543210",
        "dob": "January 1, 1999",
        "joinOn": "January 1, 1999",
      };
    } finally {
      isLoading(false);
    }
  }
}

// Future<void> logout() async {
//   SharedPreferences prefs = await SharedPreferences.getInstance();
//   await prefs.clear(); // Clear saved preferences
//   Get.offAll(() => LoginPage()); // Navigate to BottomNavScreen after logout
// }

class Profile extends StatelessWidget {
  final ProfileController profileController = Get.put(ProfileController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profile',
          style: TextStyle(
            color: AppColors.light,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
        centerTitle: false,
        backgroundColor: AppColors.normal,
        actions: [
          IconButton(
            onPressed: () {
              // Call logout when logout icon is tapped
             // logout();
              print("Logout tapped");
            },
            icon: Icon(Icons.logout, color: Colors.white),
          )
        ],
      ),
      body: Obx(() {
        if (profileController.isLoading.value) {
          return Center(child: CircularProgressIndicator());
        }

        final data = profileController.profileData;

        return SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                // Header Card displaying name and email
                Card(
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.blue[200],
                      child: Text(
                        data['name'][0], // First letter of the name
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    title: Text(
                      data['name'],
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    subtitle: Text(data['email']),
                  ),
                ),
                SizedBox(height: 16),

                // Details Card displaying various profile data
                Card(
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        buildDetailRow(
                            Icons.apartment, "Department", data['department']),
                        buildDetailRow(
                            Icons.location_on, "Location", data['location']),
                        buildDetailRow(
                            Icons.person, "Reporting To", data['reportingTo']),
                        buildDetailRow(Icons.email, "Email ID", data['email']),
                        buildDetailRow(
                            Icons.phone, "Contact No", data['contactNo']),
                        buildDetailRow(
                            Icons.cake, "Date of Birth", data['dob']),
                        buildDetailRow(
                            Icons.calendar_today, "Join On", data['joinOn']),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }

  // Helper function to build the rows for profile details
  Widget buildDetailRow(IconData icon, String title, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Icon(icon, color: Colors.blue),
          SizedBox(width: 16),
          Expanded(
            child: Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
          Expanded(
            child: Text(
              value,
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.end,
            ),
          ),
        ],
      ),
    );
  }
}

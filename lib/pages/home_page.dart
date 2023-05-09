import 'package:date_format/date_format.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:jtech_attendance_aap/constants/color.dart';

import '../services/theme_services.dart';
import '../widgets/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now(); // get current date and time
    String formattedTime = DateFormat('h:m a').format(now);
    String formattedDate =
        DateFormat('EEEE, MMMM d, y').format(now); // format the time
    // output: 9:30 PM
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text(
          "JTech Attendance ",
          style: TextStyle(
            fontSize: 20,
            color: AppColor.kJtechPrimaryColor,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            CustomAppBar(
              onPressed: ServiceThemes().changeTheme(),
            ),
            Text(
              formattedTime,
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w500,
                color: AppColor.kJtechPrimaryColor,
              ),
            ),
            Text(
              formattedDate,
              style: TextStyle(
                fontSize: 17,
                color: Get.isDarkMode
                    ? AppColor.kbgColor
                    : AppColor.kJtechPrimaryColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

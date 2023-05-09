import 'package:flutter/material.dart';
import 'package:jtech_attendance_aap/constants/constants.dart';
import 'package:jtech_attendance_aap/pages/screens.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2)).then((value) {
      var route = MaterialPageRoute(builder: (_) => NavBar());
      Navigator.push(context, route);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.kJtechSecondColor,
      body: Column(
        // crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Image.asset("assets/images/Splash.png"),
          ),
          // Text(
          //   "JTech Attendance App",
          //   style: TextStyle(
          //     fontSize: 30,
          //     color: Colors.grey[200],
          //   ),
          // ),
        ],
      ),
    );
  }
}

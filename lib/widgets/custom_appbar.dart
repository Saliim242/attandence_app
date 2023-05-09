import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../constants/constants.dart';

class CustomAppBar extends StatelessWidget {
  final void Function()? onTap;
  void Function()? onPressed;
  CustomAppBar({
    super.key,
    this.onTap,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          "assets/images/jtech.png",
          width: 200,
        ),
        Spacer(),
        GestureDetector(
          onTap: onTap,
          child: Container(
            width: 50, //MediaQuery.of(context).size.width * 0.055,
            height: 50, //MediaQuery.of(context).size.height * 0.055,
            decoration: BoxDecoration(
              color: AppColor.kJtechSecondColor,
              borderRadius: BorderRadius.circular(5),
            ),
            child: IconButton(
              onPressed: onPressed,
              icon: Icon(
                Get.isDarkMode
                    ? Icons.wb_sunny_outlined
                    : Icons.nights_stay_outlined,
              ),
              color: Get.isDarkMode ? Colors.white : Colors.black,
            ),
          ),
        )
      ],
    );
  }
}

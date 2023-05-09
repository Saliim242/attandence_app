import 'package:flutter/material.dart';

const Color snackdarkbarColor = Color(0xffdfe3e6);
const Color snacklightkbarColor = Color(0xff063b4c);
const Color AddTaskColor = Color(0xff003246F);
const Color blueClrColor = Color(0xFf4e5ae8);
const Color grenClrColor = Color(0xFfD600FF);
const Color yellowColor = Color(0xFFFFB800);
const Color PINKColor = Color(0xFFFF4667);
const Color whiteColor = Colors.white;
const primaryClr = blueClrColor;
const Color darkGrayColor = Color(0xff121212);
//const Color darkGrayColor = Color(0xFFFFB746);
Color darkHeader = Color(0xff424242);

class Themes {
  static final lightMode = ThemeData(
    useMaterial3: true,
    //backgroundColor: Color(0xfff5f7fa),
    //primarySwatch: primaryClr,
    primaryColor: primaryClr,
    brightness: Brightness.light,
  );
  static final darkMode = ThemeData(
      useMaterial3: true,
      //backgroundColor: darkGrayColor,
      primaryColor: darkGrayColor,
      brightness: Brightness.dark,
      textTheme: TextTheme());
}

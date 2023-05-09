import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

import 'pages/screens.dart';
import 'services/services.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  runApp(const JTechAttendanceApp());
}

class JTechAttendanceApp extends StatelessWidget {
  const JTechAttendanceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Jtech Solution',
      darkTheme: Themes.darkMode,
      themeMode: ServiceThemes().theme,
      theme: Themes.lightMode,
      home: const SplashScreen(),
    );
  }
}

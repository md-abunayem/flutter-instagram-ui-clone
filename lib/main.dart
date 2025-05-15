import 'package:flutter/material.dart';
import 'package:instagram_ui_clone/Screens/Splash/splashscreen.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram',
      theme: ThemeData(
        brightness: Brightness.dark,
          fontFamily: "Inter"
      ),
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}


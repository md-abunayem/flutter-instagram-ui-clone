import 'dart:async';

import 'package:flutter/material.dart';
import 'package:instagram_ui_clone/Screens/LogIn/loginscreen.dart';
import 'package:instagram_ui_clone/Widgets/uihelper.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> LogInScreen()));
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            UiHelper.CustomImage(imgurl: "instagram_img.png"),
            SizedBox(
              height: 20,
            ),
            UiHelper.CustomImage(imgurl: "logo.png")
          ],
        ),
      ),
    );
  }
}

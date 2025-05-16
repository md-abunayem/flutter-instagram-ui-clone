import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_ui_clone/Screens/BottomNav/bottomnav.dart';
import 'package:instagram_ui_clone/Screens/LogIn/signupscreen.dart';
import 'package:instagram_ui_clone/Widgets/uihelper.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  TextEditingController emailController = TextEditingController();

  TextEditingController passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            UiHelper.CustomImage(imgurl: "logo.png"),
            SizedBox(height: 40,),
            UiHelper.CustomTextField(controller: emailController, text: "Email", toHide: false, textInputType: TextInputType.emailAddress),
            SizedBox(height: 10,),
            UiHelper.CustomTextField(controller: passController, text: "Password", toHide: true, textInputType: TextInputType.text),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(padding: EdgeInsets.only(right: 30),
                  child: UiHelper.CustomTextButton(text: "Forgot password?", callback: (){

                  }),
                )
              ],
            ),
            UiHelper.CustomButton(callback: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
                return BottomNavScreen();
              }));
            }, text: "Log In"),
            SizedBox(height: 25,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UiHelper.CustomImage(imgurl: "fb_icon.png"),
                UiHelper.CustomTextButton(text: "Log in with Facebook", callback: (){})
              ],
            ),
            SizedBox(height: 25,),
            UiHelper.CustomText(text: "OR", fontSize: 12, textColor: Color(0xFFFFFFFF),fontWeight: FontWeight.w600),
            SizedBox(height: 25,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UiHelper.CustomText(text: "Don’t have an account?", fontSize: 14),
                UiHelper.CustomTextButton(text: "Sign up.", callback: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
                    return SignUpScreen();
                  }));
                },)
              ],
            ),

          ],
        ),
      ),
    );
  }
}

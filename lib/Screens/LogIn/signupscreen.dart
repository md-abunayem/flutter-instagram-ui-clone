import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_ui_clone/Screens/LogIn/loginscreen.dart';
import 'package:instagram_ui_clone/Widgets/uihelper.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  TextEditingController userNameController = TextEditingController();
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
            UiHelper.CustomTextField(controller: emailController, text: "Password", toHide: true, textInputType: TextInputType.text),
            SizedBox(height: 10,),
            UiHelper.CustomTextField(controller: emailController, text: "Email", toHide: false, textInputType: TextInputType.text),
            SizedBox(height: 30,),
            UiHelper.CustomButton(callback: (){}, text: "Sign Up"),
            SizedBox(height: 40,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UiHelper.CustomText(text: "Already have an Account?", fontSize: 14),
                UiHelper.CustomTextButton(text: "Log In", callback: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
                    return LogInScreen();
                  }));
                })
              ],
            )
          ],
        ),
      ),
    );
  }
}

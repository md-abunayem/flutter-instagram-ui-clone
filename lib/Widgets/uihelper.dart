import 'package:flutter/material.dart';

class UiHelper {

  static Widget CustomText({
    required String text,
    required double fontSize,
    FontWeight fontWeight = FontWeight.normal,
    Color textColor = const Color(0xFFF9F9F9),
  }) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: textColor,
      ),
    );
  }



  static CustomTextButton(
      {required String text, required VoidCallback callback}) {
    return TextButton(
        onPressed: callback,
        child: Text(
          text,
          style: TextStyle(color: Color(0xFF3797EF)),
        ));
  }

  static CustomTextField({required TextEditingController controller,
    required String text,
    required bool toHide,
    required TextInputType textInputType}) {
    return Container(
      height: 50,
      width: 343,
      decoration: BoxDecoration(
          color: Color(0xFF121212),
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: Colors.white24)),
      child: Padding(
        padding: const EdgeInsets.only(left: 15.0),
        child: TextField(
          controller: controller,
          keyboardType: textInputType,
          obscureText: toHide,
          decoration: InputDecoration(
            hintText: text,
            hintStyle: TextStyle(
                fontSize: 14,
                color: Color(0xFFFFFFFF),
                fontWeight: FontWeight.normal),
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }

  static CustomImage({required String imgurl}) {
    return Image.asset('assets/images/$imgurl');
  }

  static CustomButton({required VoidCallback callback, required String text}) {
    return SizedBox(
      width: 343,
      height: 45,
      child: ElevatedButton(
        onPressed: () {
          callback();
        },
        child: Text(
          text,
          style: TextStyle(fontSize: 14, color: Colors.white),
        ),
        style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xFF3797EF),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5))
        ),
      ),
    );
  }
}

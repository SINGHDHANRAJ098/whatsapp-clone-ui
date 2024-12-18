
import 'package:flutter/material.dart';

class Uihelper {
  CustomButton(
      {required VoidCallback callback, required String buttonname,}) {
    return SizedBox(
      height: 45,
      width: 350,

      child: ElevatedButton(
        onPressed: () {
          callback();
        }, style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40),
    )),

        child: Text(
          buttonname,
          style: TextStyle(fontSize: 14, color: Colors.white),
        ),
      ),
    );
  }

 CustomText(
      {required String text,
        required double height,
        Color? color,
        FontWeight? fontweight}) {
    return Text(
      text,
      style: TextStyle(fontSize: height, color: color ?? Color(0xfff5E5E5E),
          fontWeight: fontweight
      ),
    );
  }
}
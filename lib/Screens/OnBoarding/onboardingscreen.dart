import 'package:flutter/material.dart';
import 'package:flutter/material.dart.';
import 'package:whatsapp/Screens/Login/loginscreen.dart';
import 'package:whatsapp/Widgets/uihelper.dart';

class Onboardingscreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Image.asset("assets/images/image 1.png"),
          SizedBox(height: 20,),
          Uihelper().CustomText(text: "Welcome to WhatsApp", height:20,color: Color(0xff000000)),
           SizedBox(height: 20,),
           Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Uihelper().CustomText(text: "Read out", height: 14),
                Uihelper().CustomText(text: "Privacy Policy", height: 14,color: Color(0xff0C42CC)),
                Uihelper().CustomText(text: "Tap ''Agree and continue'' ", height: 14),
              ],),
              SizedBox(height: 5,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Uihelper().CustomText(text: "to accept the", height: 14),
                  Uihelper().CustomText(text: "Teams of service", height: 14,color: Color(0xff0C42CC)),
                ],
              )

      ],),
    ),
    floatingActionButton: Uihelper().CustomButton(callback: (){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>Loginscreen()));
    }, buttonname: "Agree and continue",),
    floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
  );
  }

}
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp/Widgets/uihelper.dart';

class OTPScreen extends StatelessWidget {
  String phonenumber;
  OTPScreen({required this.phonenumber});
  TextEditingController otp1Controller = TextEditingController();
  TextEditingController otp2Controller = TextEditingController();
  TextEditingController otp3Controller = TextEditingController();
  TextEditingController otp4Controller = TextEditingController();
  TextEditingController otp5Controller = TextEditingController();
  TextEditingController otp6Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 80,
            ),
            Uihelper().CustomText(
                text: "Verifying your number",
                height: 20,
                color: Color(0XFF00A884),
                fontweight: FontWeight.bold),
            SizedBox(
              height: 30,
            ),
            Uihelper().CustomText(
                text: "You've tried to register +91${phonenumber}", height: 15),
            Uihelper().CustomText(
                text: "recently. wait before requesting an sms or a call ",
                height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Uihelper().CustomText(text: "with your code. ", height: 15),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Uihelper().CustomText(
                      text: "Wrong number?",
                      height: 15,
                      color: Color(0XFF00A884)),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Uihelper.CustomContainer(otp1Controller),
                SizedBox(
                  width: 10,
                ),
                Uihelper.CustomContainer(otp2Controller),
                SizedBox(
                  width: 10,
                ),
                Uihelper.CustomContainer(otp3Controller),
                SizedBox(
                  width: 10,
                ),
                Uihelper.CustomContainer(otp4Controller),
                SizedBox(
                  width: 10,
                ),
                Uihelper.CustomContainer(otp5Controller),
                SizedBox(
                  width: 10,
                ),
                Uihelper.CustomContainer(otp6Controller),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Uihelper().CustomText(
                text: "Didn't receive code?",
                height: 14,
                color: Color(0XFF00A884))
          ],
        ),
      ),
      floatingActionButton: Uihelper().CustomButton(callback: (){}, buttonname: "Next"),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

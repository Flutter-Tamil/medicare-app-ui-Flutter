import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medicare_app/views/register.dart';

import '../constant.dart';
import '../widgets/emailfield02.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: bgColor,
        elevation: 0,
        iconTheme: IconThemeData(color: darkColor),
      ),
      body: Center(
        child: Container(
          width: Get.size.width * 0.8,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              EmailField02(
                title: Text("Email Address"),
                titleStyle: TextStyle(
                  color: Color(0xFF6e64e1),
                  fontWeight: FontWeight.w500,
                ),
                leading: Icon(
                  Icons.email_outlined,
                  color: Color(0xFF6e64e1),
                ),
                backgroundColor: lightColor,
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: Get.size.width * 0.9,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: darkColor,
                      padding: EdgeInsets.symmetric(
                        vertical: v_btn_padding,
                      )),
                  onPressed: () {},
                  child: Text(
                    "Forgot Password".toUpperCase(),
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      style: TextButton.styleFrom(
                        foregroundColor: darkColor,
                      ),
                      onPressed: () {
                        Get.to(
                          Register(),
                        );
                      },
                      child: Text(
                        "I haven't an account",
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

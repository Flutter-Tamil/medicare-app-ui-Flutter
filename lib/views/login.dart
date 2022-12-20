import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medicare_app/constant.dart';
import 'package:medicare_app/views/forgotPassword.dart';
import 'package:medicare_app/views/home.dart';
import 'package:medicare_app/views/mainpages/profile.dart';
import 'package:medicare_app/views/register.dart';
import 'package:medicare_app/widgets/emailfield01.dart';
import 'package:medicare_app/widgets/emailfield02.dart';

class Login extends StatelessWidget {
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
                  color: darkColor,
                  fontWeight: FontWeight.w500,
                ),
                leading: Icon(
                  Icons.email_outlined,
                  color: darkColor,
                ),
                backgroundColor: lightColor,
              ),
              SizedBox(
                height: 20,
              ),
              EmailField02(
                title: Text("Password"),
                titleStyle: TextStyle(
                  color: darkColor,
                  fontWeight: FontWeight.w500,
                ),
                leading: Icon(
                  Icons.lock_outline,
                  color: darkColor,
                  weight: 20,
                ),
                backgroundColor: lightColor,
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      style: TextButton.styleFrom(
                        foregroundColor: darkColor,
                      ),
                      onPressed: () {
                        Get.to(
                          ForgotPassword(),
                        );
                      },
                      child: Text(
                        "Forgot Password?",
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: Get.size.width * 0.9,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: darkColor,
                      padding: EdgeInsets.symmetric(
                        vertical: v_btn_padding,
                      )),
                  onPressed: () {
                    Get.to(
                      ProfilePage(),
                    );
                  },
                  child: Text(
                    "Log In".toUpperCase(),
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

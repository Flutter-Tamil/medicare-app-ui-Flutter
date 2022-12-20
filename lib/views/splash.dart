import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medicare_app/constant.dart';
import 'package:medicare_app/views/login.dart';
import 'package:medicare_app/views/register.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: bgColor,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          children: [
            Flexible(
              child: Container(
                height: 200,
                child: Text(
                  "Welcome to MediCare",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: darkColor,
                  ),
                ),
              ),
              flex: 1,
            ),
            Flexible(
              flex: 2,
              child: Image.asset(
                "assets/images/splash.png",
              ),
            ),
            SizedBox(
              height: 100,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Flexible(
                  flex: 1,
                  child: Container(
                    padding: EdgeInsets.all(padding),
                    width: Get.size.width,
                    child: TextButton(
                      style: TextButton.styleFrom(
                        foregroundColor: darkColor,
                        padding: EdgeInsets.symmetric(
                          vertical: v_btn_padding,
                        ),
                      ),
                      onPressed: () {
                        Get.to(
                          Register(),
                        );
                      },
                      child: Text(
                        "Sign Up".toUpperCase(),
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Container(
                    padding: EdgeInsets.all(padding),
                    width: Get.size.width,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: darkColor,
                        padding: EdgeInsets.symmetric(
                          vertical: v_btn_padding,
                        ),
                      ),
                      onPressed: () {
                        Get.to(
                          Login(),
                        );
                      },
                      child: Text(
                        "Log In".toUpperCase(),
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

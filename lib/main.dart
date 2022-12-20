import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:medicare_app/constant.dart';
import 'package:medicare_app/views/login.dart';
import 'package:medicare_app/views/splash.dart';

void main() {
  runApp(
    GetMaterialApp(
      theme: ThemeData(
        iconTheme: IconThemeData(
          color: Colors.amber,
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ),
  );
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SplashScreen(),
    );
  }
}

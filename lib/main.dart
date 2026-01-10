import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'login_controller.dart';
import 'login_page.dart';

void main() {
  Get.put(LoginController(), permanent: true);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Login Page',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: LoginPage(),
    );
  }
}
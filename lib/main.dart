import 'package:flutter/material.dart';
import 'package:tamang_food_app/app/screens/walkthrough_screen/walkthrough.dart';
import 'app/screens/forget/views/forget.dart';
import 'app/screens/login/view/login.dart';
import 'app/screens/welcome_screen/views/welcome.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (ctx) => const ForgetScreen(),
        'w_through': (ctx) => const OnboardingScreen(),
      },
    ),
  );
}

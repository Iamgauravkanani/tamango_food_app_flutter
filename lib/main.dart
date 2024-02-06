import 'package:flutter/material.dart';
import 'package:tamang_food_app/app/screens/reset/views/reset.dart';
import 'package:tamang_food_app/app/screens/walkthrough_screen/walkthrough.dart';
import 'app/screens/forget/views/forget.dart';
import 'app/screens/login/view/login.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (ctx) => const Reset(),
        'w_through': (ctx) => const OnboardingScreen(),
        'login': (ctx) => const Login(),
        'forget': (ctx) => const ForgetScreen(),
        'reset': (ctx) => const Reset(),
      },
    ),
  );
}

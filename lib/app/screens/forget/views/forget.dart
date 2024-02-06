import 'package:flutter/material.dart';

import '../../../utils/colors.dart';
import '../../../utils/const.dart';

class ForgetScreen extends StatefulWidget {
  const ForgetScreen({super.key});

  @override
  State<ForgetScreen> createState() => _ForgetScreenState();
}

class _ForgetScreenState extends State<ForgetScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        toolbarHeight: 80,
        title: Text(
          "Forget Password",
          style:
              welcome_style(color: Colors.black, fontWeight: FontWeight.w600),
        ),
        leading: IconButton(
            onPressed: () {}, icon: const Icon(Icons.arrow_back_ios)),
        centerTitle: true,
      ),
    );
  }
}

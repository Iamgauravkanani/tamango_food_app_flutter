import 'package:flutter/material.dart';
import 'package:tamang_food_app/app/utils/const.dart';
import '../../../utils/colors.dart';
import 'components/forget_components.dart';

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
      //todo:appbar in components
      appBar: forget_appbar,
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Forgot password",
              style: app_textstyle(fontWeight: FontWeight.w300, fontsize: 34),
            ),
            mysizedbox(h: 10),
            Text(
              "Enter your email address and we will\nsend you a reset instructions.",
              style: app_textstyle(
                  fontWeight: FontWeight.w400, color: AppColors.grey_text),
            ),
            mysizedbox(h: 50),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "EMAIL ADDRESS",
                  style: app_textstyle(
                    fontsize: 12,
                    color: AppColors.grey_text,
                  ),
                ),
                TextFormField(
                  enabled: true,
                  decoration: InputDecoration(
                      enabledBorder: underlineborder(),
                      focusedBorder: underlineborder(),
                      hintText: 'enter email adress...',
                      hintStyle: textStyle,
                      focusColor: Colors.grey),
                ),
              ],
            ),
            mysizedbox(),
            reset_pass_btn,
          ],
        ),
      ),
    );
  }
}

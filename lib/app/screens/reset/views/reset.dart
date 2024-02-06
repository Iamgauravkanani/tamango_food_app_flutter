import 'package:flutter/material.dart';
import 'package:tamang_food_app/app/utils/colors.dart';
import 'package:tamang_food_app/app/utils/const.dart';

import '../../../utils/assets/assets.dart';
import '../../forget/views/components/forget_components.dart';

class Reset extends StatefulWidget {
  const Reset({super.key});

  @override
  State<Reset> createState() => _ResetState();
}

class _ResetState extends State<Reset> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: forget_appbar,
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Reset email sent",
              style: app_textstyle(
                fontsize: 34,
                fontWeight: FontWeight.w300,
              ),
            ),
            mysizedbox(h: 10),
            Text(
              "We have sent a instructions email to\ndemo@tamangfoods.com.",
              style: app_textstyle(
                fontWeight: FontWeight.w400,
                color: AppColors.grey_text,
              ),
            ),
            mysizedbox(h: 30),
            Center(
              child: FilledButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'reset');
                },
                style: ButtonStyle(
                  padding: const MaterialStatePropertyAll(
                    EdgeInsets.symmetric(horizontal: 147, vertical: 18),
                  ),
                  shape: MaterialStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  backgroundColor: MaterialStateProperty.all(
                    AppColors.app_color,
                  ),
                ),
                child: Text(
                  "SEND AGAIN",
                  style: app_textstyle(
                    fontsize: 14,
                    color: AppColors.white,
                  ),
                ),
              ),
            ),
            mysizedbox(h: 150),
            Center(child: Image.asset(Asset.noodels)),
          ],
        ),
      ),
    );
  }
}

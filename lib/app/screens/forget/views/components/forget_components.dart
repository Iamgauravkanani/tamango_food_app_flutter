import 'package:flutter/material.dart';
import '../../../../utils/colors.dart';
import '../../../../utils/const.dart';

var forget_appbar = AppBar(
  backgroundColor: AppColors.white,
  toolbarHeight: 80,
  title: Text(
    "Forget Password",
    style: app_textstyle(color: Colors.black, fontWeight: FontWeight.w600),
  ),
  leading: IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back_ios)),
  centerTitle: true,
);

var reset_pass_btn = Builder(builder: (context) {
  return FilledButton(
    onPressed: () {
      Navigator.pushNamed(context, 'reset');
    },
    style: ButtonStyle(
      padding: const MaterialStatePropertyAll(
        EdgeInsets.symmetric(horizontal: 130, vertical: 18),
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
      "RESET PASSWORD",
      style: app_textstyle(
        fontsize: 14,
        color: AppColors.white,
      ),
    ),
  );
});

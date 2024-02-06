import 'package:flutter/material.dart';
import '../../../../utils/assets/assets.dart';
import '../../../../utils/colors.dart';
import '../../../../utils/const.dart';

//todo:appbar
var appBar = AppBar(
  backgroundColor: AppColors.white,
  toolbarHeight: 40,
  title: Text(
    "Sign In",
    style: app_textstyle(color: Colors.black),
  ),
  leading: IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back_ios)),
  centerTitle: true,
);

//todo:sign in button
var signin_btn = FilledButton(
  onPressed: () {},
  style: ButtonStyle(
    padding: const MaterialStatePropertyAll(
      EdgeInsets.symmetric(horizontal: 170, vertical: 18),
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
  child: Text("Sign In",
      style: app_textstyle(
          fontWeight: FontWeight.w700, fontsize: 14, color: AppColors.white)),
);

//todo:facebook btn
var fb_btn = Container(
  height: 44,
  width: 335,
  decoration: BoxDecoration(
    color: AppColors.blue_color,
    borderRadius: BorderRadius.circular(10),
  ),
  child: Row(
//mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      const SizedBox(
        width: 10,
      ),
      Image.asset(Asset.facebook),
      const SizedBox(
        width: 50,
      ),
      Text(
        "Connect with Facebook",
        style: app_textstyle(
            fontWeight: FontWeight.w600, color: AppColors.white, fontsize: 12),
      ),
    ],
  ),
);

//todo:google btn
var google_btn = Container(
  height: 44,
  width: 335,
  decoration: BoxDecoration(
    color: AppColors.sky_blue,
    borderRadius: BorderRadius.circular(10),
  ),
  child: Row(
//mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      const SizedBox(
        width: 10,
      ),
      Image.asset(Asset.google),
      const SizedBox(
        width: 50,
      ),
      Text(
        "Connect with Google",
        style: app_textstyle(
            fontWeight: FontWeight.w600, color: AppColors.white, fontsize: 12),
      ),
    ],
  ),
);

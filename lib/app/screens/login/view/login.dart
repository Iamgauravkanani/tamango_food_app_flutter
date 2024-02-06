import 'package:flutter/material.dart';
import 'package:tamang_food_app/app/utils/colors.dart';
import 'package:tamang_food_app/app/utils/const.dart';

import '../../../utils/assets/assets.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        toolbarHeight: 80,
        title: Text(
          "Sign In",
          style: welcome_style(color: Colors.black),
        ),
        leading: IconButton(
            onPressed: () {}, icon: const Icon(Icons.arrow_back_ios)),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          //mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Wecome to Tamang\nFood Services",
              style: welcome_style(
                fontWeight: FontWeight.w300,
                fontsize: 33,
              ),
            ),
            Text(
              "Enter your Phone number or Email\naddress for sign in. Enjoy your food :)",
              style: welcome_style(
                fontsize: 16,
                fontWeight: FontWeight.w400,
                color: const Color(0xff868686),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "EMAIL ADRESS",
                  style: mytextstyle(),
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
                Text(
                  "PASSWORD",
                  style: mytextstyle(),
                ),
                TextFormField(
                  decoration: InputDecoration(
                    enabledBorder: underlineborder(),
                    focusedBorder: underlineborder(),
                    hintText: 'enter password...',
                    hintStyle: textStyle,
                  ),
                ),
                Column(
                  children: [
                    Text(
                      "Forget Password?",
                      style: mytextstyle(),
                    ),
                    FilledButton(
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
                          style: welcome_style(
                              fontWeight: FontWeight.w700,
                              fontsize: 14,
                              color: AppColors.white)),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don't have account?",
                          style: mytextstyle(),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Text(
                          "Create new account.",
                          style: welcome_style(
                            fontWeight: FontWeight.w300,
                            fontsize: 12,
                            color: AppColors.app_color,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "Or",
                      style: welcome_style(
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Container(
                      height: 44,
                      width: 335,
                      decoration: BoxDecoration(
                        color: AppColors.blue_color,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset(Asset.facebook),
                          Text(
                            "Connect with Facebook",
                            style: welcome_style(
                                fontWeight: FontWeight.w600,
                                color: AppColors.white,
                                fontsize: 12),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  TextStyle mytextstyle() => welcome_style(
        fontWeight: FontWeight.w300,
        fontsize: 12,
      );

  TextStyle textStyle = const TextStyle(
    color: Colors.grey,
  );

  UnderlineInputBorder underlineborder() => const UnderlineInputBorder(
        borderSide: BorderSide(
          color: Colors.grey,
        ),
      );
}

import 'package:flutter/material.dart';
import 'package:tamang_food_app/app/screens/login/view/components/login_components.dart';
import 'package:tamang_food_app/app/utils/colors.dart';
import 'package:tamang_food_app/app/utils/const.dart';

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
      //todo:appbar in components
      appBar: appBar,
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
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
              mybox(),
              Text(
                "Enter your Phone number or Email\naddress for sign in. Enjoy your food :)",
                style: welcome_style(
                  fontsize: 16,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xff868686),
                ),
              ),
              mybox(),
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
                  mybox(),
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
                  mybox(),
                  Column(
                    children: [
                      Text(
                        "Forget Password?",
                        style: mytextstyle(),
                      ),
                      mybox(),
                      //todo:btn in compoennts
                      signin_btn,
                      mybox(),
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
                      mybox(),
                      Text(
                        "Or",
                        style: welcome_style(
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      mybox(),
                      //todo:btn in compoennts
                      fb_btn,
                      mybox(),
                      //todo:btn in compoennts
                      google_btn,
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  SizedBox mybox() => const SizedBox(height: 20);
  //SizedBox myboxw() => const SizedBox(height: 20);
  TextStyle mytextstyle() => welcome_style(
        fontWeight: FontWeight.w300,
        fontsize: 12,
      );

  TextStyle textStyle = const TextStyle(
    color: Colors.grey,
  );
}

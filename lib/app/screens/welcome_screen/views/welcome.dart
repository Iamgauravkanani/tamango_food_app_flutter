import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tamang_food_app/app/utils/colors.dart';
import 'package:tamang_food_app/app/utils/const.dart';
import '../../../utils/assets/assets.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.btn_text_color,
        body: Stack(
          children: [
            Image.asset(Asset.bg_image),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const SizedBox(
                  height: 0,
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 30,
                    ),
                    Image.asset(Asset.icon_logo),
                    Text(
                      textAlign: TextAlign.center,
                      "Tamang \n Foodservice",
                      style: GoogleFonts.poppins(
                        fontSize: 37,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
                Image.asset(Asset.icon_center),
                Text(
                  "Welcome",
                  style: GoogleFonts.poppins(
                    fontSize: 28,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                    textAlign: TextAlign.center,
                    "It's pleasure to meet you.We are\n"
                    "excited that you are here to let's get\n"
                    "started.",
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    )),
                const SizedBox(
                  height: 10,
                ),
                FilledButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'w_through');
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
                  child:
                      Text("GET STARTED", style: welcome_style(fontsize: 14)),
                ),
                const SizedBox()
              ],
            ),
          ],
        ),
      ),
    );
  }
}

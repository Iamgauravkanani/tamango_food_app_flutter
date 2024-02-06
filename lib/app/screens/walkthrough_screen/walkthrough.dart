import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../utils/assets/assets.dart';
import '../../utils/colors.dart';
import '../../utils/const.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreen();
}

class _OnboardingScreen extends State<OnboardingScreen> {
  //Declaration
  int selectedIndex = 0;

  List<Map<String, dynamic>> onboardingList = [
    {
      "title": "All your favourites",
      "subtitle":
          "Order from the best local restaurants\nwith easy on demand delivery.",
      "image": Asset.one,
    },
    {
      "title": "Free delivery offers",
      "subtitle": "Make yourself expert your skill\nby studying from mentors",
      "image": Asset.three,
    },
    {
      "title": "Choose your food",
      "subtitle":
          "Easily find your type of food craving and you 'll\nget delivery in wide range",
      "image": Asset.two,
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.btn_text_color,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 100,
          ),
          Row(
            children: [
              const SizedBox(
                width: 30,
              ),
              Image.asset(Asset.icon_logo),
              Text(
                "Tamang \n Foodservice",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  fontSize: 37,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          //App Intro slider
          Expanded(
            child: PageView.builder(
              itemCount: onboardingList.length,
              onPageChanged: (int page) {
                setState(() {
                  selectedIndex = page;
                });
              },
              itemBuilder: (_, index) {
                var data = onboardingList[index];
                return Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 62),
                        child: Image.asset(
                          data['image'],
                          height: MediaQuery.of(context).size.height * .4,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 68,
                    ),
                    Text(
                      data['title'],
                      textAlign: TextAlign.center,
                      style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w400,
                        fontSize: 30,
                        color: const Color(0xff0D0F44),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      data['subtitle'],
                      textAlign: TextAlign.center,
                      style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: const Color(0xff868686),
                      ),
                    )
                  ],
                );
              },
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          Column(
            children: [
              // Page indicator
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: _buildPageIndicator(),
              ),
              const SizedBox(
                height: 40,
              ),
              //Continue Button

              FilledButton(
                onPressed: () {},
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
                child: Text("GET STARTED", style: app_textstyle(fontsize: 14)),
              ),
              const SizedBox(
                height: 45,
              ),
            ],
          ),
        ],
      ),
    );
  }

  // Custom UI
  Widget _indicator(bool isActive) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      height: 5.0,
      width: 8.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        // shape: BoxShape.circle,
        color: isActive ? const Color(0XFF22A45D) : const Color(0XFFDADEEB),
      ),
    );
  }

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < onboardingList.length; i++) {
      list.add(i == selectedIndex ? _indicator(true) : _indicator(false));
    }
    return list;
  }

  // Custom Actions
  void onContinue() {
    Navigator.pushNamed(context, "login");
  }
}

import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:khan_hills/home/view/home_view.dart';
import 'package:khan_hills/utils/colors.dart';
import 'package:khan_hills/utils/custom_styles.dart';

class ChooseLanguage extends StatefulWidget {
  const ChooseLanguage({Key? key}) : super(key: key);
  @override
  State<ChooseLanguage> createState() => _ChooseLanguageState();
}

class _ChooseLanguageState extends State<ChooseLanguage> {
  int activeIndex = 0;
  String lang = "mn";
  @override
  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Image.asset(
          "assets/images/img_building_bg.png",
          height: size.height * 1,
          width: size.width * 1,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Container(
            alignment: Alignment.center,
            margin: EdgeInsets.symmetric(horizontal: size.width * .05),
            child: Column(
              children: [
                SizedBox(height: size.height * .08),
                Image.asset(
                  "assets/images/img_logo.png",
                  height: size.height * .15,
                ),
                Text("Сайн уу.",
                    style: CustomStyles.textLargeBold(context,
                        textColor:
                            activeIndex == 0 ? primaryColor : whiteColor)),
                Text("Hello",
                    style: CustomStyles.textLargeBold(context,
                        textColor:
                            activeIndex == 1 ? primaryColor : whiteColor)),
                SizedBox(height: size.height * .17),
                Text(
                  "Хэл сонгох/Choose language",
                  style: CustomStyles.textSmallNormal(context,
                      textColor: whiteColor),
                ),
                SizedBox(height: size.height * .02),
                InkWell(
                  onTap: () {
                    setState(() {
                      activeIndex = 0;
                      lang = "mn";
                      print("lang $lang");
                    });
                  },
                  child: ClipRect(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(width: 1, color: secondaryColor),
                            color: activeIndex == 0
                                ? primaryColor.withOpacity(0.8)
                                : Colors.grey.shade50.withOpacity(0.6)),
                        child: ListTile(
                          leading: Image.asset("assets/images/img_mongolia.png",
                              height: size.height * .04),
                          title: Text(
                            "Монгол",
                            style: CustomStyles.textSmallmSemiBold(context,
                                textColor: whiteColor),
                          ),
                          trailing: Icon(
                              activeIndex == 0
                                  ? Icons.radio_button_checked
                                  : Icons.radio_button_off,
                              color: activeIndex == 0
                                  ? whiteColor
                                  : secondaryColor),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: size.height * .02),
                InkWell(
                  onTap: () {
                    setState(() {
                      activeIndex = 1;
                      lang = "en";
                    });
                  },
                  child: ClipRect(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 4.0, sigmaY: 4.0),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(width: 1, color: secondaryColor),
                            color: activeIndex == 1
                                ? primaryColor.withOpacity(0.8)
                                : Colors.grey.shade50.withOpacity(0.6)),
                        child: ListTile(
                          leading: Image.asset("assets/images/img_america.png",
                              height: size.height * .04),
                          title: Text(
                            "English",
                            style: CustomStyles.textSmallmSemiBold(context,
                                textColor: whiteColor),
                          ),
                          trailing: Icon(
                              activeIndex == 1
                                  ? Icons.radio_button_checked
                                  : Icons.radio_button_off,
                              color: activeIndex == 1
                                  ? whiteColor
                                  : secondaryColor),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: size.height * .15),
                InkWell(
                  onTap: () {
                    print("lang from main btn $lang");
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Home(lang: lang)),
                    );
                  },
                  child: Container(
                    width: size.width,
                    height: size.height * .07,
                    decoration: BoxDecoration(
                        color: buttonBg,
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Text(
                        lang == "mn" ? "Сонгох" : "Choose",
                        style: CustomStyles.textSmallmSemiBold(context,
                            textColor: whiteColor),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}

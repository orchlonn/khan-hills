import 'package:flutter/material.dart';
import 'package:khan_hills/utils/colors.dart';
import 'package:khan_hills/utils/custom_styles.dart';

class ChooseLanguage extends StatelessWidget {
  const ChooseLanguage({Key? key}) : super(key: key);

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
                SizedBox(height: size.height * .1),
                Image.asset(
                  "assets/images/img_logo.png",
                  height: size.height * .15,
                ),
                Text("Сайн уу.",
                    style: CustomStyles.textLargeBold(context,
                        textColor: whiteColor)),
                Text("Hello",
                    style: CustomStyles.textLargeBold(context,
                        textColor: primaryColor)),
                SizedBox(height: size.height * .1),
                Text(
                  "Хэл сонгох/Choose language",
                  style: CustomStyles.textSmallNormal(context,
                      textColor: whiteColor),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(width: 1, color: secondaryColor),
                    color: primaryColor,
                  ),
                  child: RadioListTile(
                    activeColor: whiteColor,
                    value: 1,
                    groupValue: 1,
                    onChanged: (val) {},
                    title: Image.asset(
                      "assets/images/img_logo.png",
                      height: size.height * .05,
                    ),
                  ),
                ),
                RadioListTile(
                  value: 2,
                  groupValue: 2,
                  onChanged: (val) {},
                  title: Text("Radio 1"),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

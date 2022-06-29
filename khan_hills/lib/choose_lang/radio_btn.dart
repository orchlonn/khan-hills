import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:khan_hills/utils/colors.dart';

class RadioBtn extends StatelessWidget {
  final String imageUrl, country;
  final VoidCallback onPress;
  final int activeIndex;
  const RadioBtn(
      {Key? key,
      required this.imageUrl,
      required this.country,
      required this.onPress,
      required this.activeIndex})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return InkWell(
      onTap: () {
        onPress();
      },
      child: ClipRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(width: 1, color: secondaryColor),
                color: primaryColor.withOpacity(0.8)),
            child: ListTile(
              leading: Image.asset(imageUrl, height: size.height * .04),
              title: Text(country),
              trailing: Icon(
                  activeIndex == 0
                      ? Icons.radio_button_checked
                      : Icons.radio_button_off,
                  color: whiteColor),
            ),
          ),
        ),
      ),
    );
  }
}

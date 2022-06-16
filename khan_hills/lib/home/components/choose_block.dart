import 'package:flutter/material.dart';
import 'package:khan_hills/utils/colors.dart';
import 'package:khan_hills/utils/custom_styles.dart';

class ChooseBlock extends StatelessWidget {
  final VoidCallback onPressed;
  int activeBtnIndex;
  final String title;
  final String activeIcon;
  final String nonActiveIcon;
  ChooseBlock(
      {Key? key,
      required this.onPressed,
      required this.activeIcon,
      required this.nonActiveIcon,
      required this.activeBtnIndex,
      required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return InkWell(
      onTap: () {
        onPressed();
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: primaryColor.withOpacity(0.3),
              spreadRadius: 1,
              blurRadius: 3,
              offset: const Offset(0, 3),
            ),
          ],
          color: whiteColor,
        ),
        width: size.width * .43,
        height: size.height * .05,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                margin: const EdgeInsets.all(5),
                child: Image.asset(
                  activeBtnIndex == 0 ? activeIcon : nonActiveIcon,
                  width: size.width * .08,
                )),
            Text(
              title,
              style: CustomStyles.textMediumSemiBold(context,
                  textColor: activeBtnIndex == 0
                      ? primaryColor
                      : unselectedPrimaryColor),
            )
          ],
        ),
      ),
    );
  }
}

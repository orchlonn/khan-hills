import 'package:flutter/material.dart';
import 'package:khan_hills/utils/colors.dart';
import 'package:khan_hills/utils/custom_styles.dart';

class OutsideButton extends StatelessWidget {
  final VoidCallback onPressed;
  final int activeBtnIndex;
  final title, activeImage, nonActiveImage;
  const OutsideButton(
      {Key? key,
      required this.activeBtnIndex,
      required this.onPressed,
      required this.title,
      required this.activeImage,
      required this.nonActiveImage})
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
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 3,
              offset: const Offset(0, 1),
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
                  activeBtnIndex == 1 ? activeImage : nonActiveImage),
            ),
            Text(
              title,
              style: CustomStyles.textMediumSemiBold(context,
                  textColor: activeBtnIndex == 1
                      ? primaryColor
                      : unselectedPrimaryColor),
            )
          ],
        ),
      ),
    );
  }
}

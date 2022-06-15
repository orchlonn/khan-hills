import 'package:flutter/material.dart';
import 'package:khan_hills/utils/colors.dart';
import 'package:khan_hills/utils/custom_styles.dart';

class OutsideButton extends StatelessWidget {
  final VoidCallback onPressed;
  final int activeBtnIndex;
  const OutsideButton(
      {Key? key, required this.activeBtnIndex, required this.onPressed})
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
              child: Image.asset(activeBtnIndex == 1
                  ? "assets/images/icon_outside_selected.png"
                  : "assets/images/icon_outside_unselected.png"),
            ),
            Text(
              "Гадна орчин",
              style: CustomStyles.textSmallSemiBold(context,
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

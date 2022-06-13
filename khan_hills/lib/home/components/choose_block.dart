import 'package:flutter/material.dart';
import 'package:khan_hills/utils/colors.dart';
import 'package:khan_hills/utils/custom_styles.dart';

class ChooseBlock extends StatelessWidget {
  const ChooseBlock({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return InkWell(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: primaryColor.withOpacity(0.3),
              spreadRadius: 1,
              blurRadius: 3,
              offset: Offset(0, 3), // changes position of shadow
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
                child: Image.asset("assets/images/icon_choose_block.png")),
            Text(
              "Блок сонгох",
              style: CustomStyles.textSmallSemiBold(context,
                  textColor: primaryColor),
            )
          ],
        ),
      ),
    );
  }
}

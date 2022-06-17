import 'package:flutter/material.dart';
import 'package:khan_hills/utils/colors.dart';
import 'package:khan_hills/utils/custom_styles.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: size.width * .05),
      child: Column(
        children: [
          SizedBox(height: size.height * .03),
          Align(
              alignment: Alignment.centerLeft,
              child: Text("Хотхоны байршил",
                  style: CustomStyles.textMinimSemiBold(context))),
          SizedBox(height: size.height * .01),
          Image.asset("assets/images/img_map.png"),
          SizedBox(height: size.height * .01),
          Align(
              alignment: Alignment.centerLeft,
              child: Text("Хотхоны байршил",
                  style: CustomStyles.textMinimSemiBold(context))),
          SizedBox(height: size.height * .02),
          const Text(
              "Хан уул 17-р хороо Khan Hills хотхон 523А байр 101 тоот Mogul ibiz LLC",
              style: TextStyle(height: 1.3)),
          SizedBox(height: size.height * .02),
          Align(
              alignment: Alignment.centerLeft,
              child: Text("Утасны дугаар",
                  style: CustomStyles.textMinimSemiBold(context))),
          SizedBox(height: size.height * .02),
          const Align(alignment: Alignment.centerLeft, child: Text("91118859")),
          SizedBox(height: size.height * .02),
          Align(
              alignment: Alignment.centerLeft,
              child: Text("Шууд залгах",
                  style: CustomStyles.textMinimSemiBold(context))),
          SizedBox(height: size.height * .02),
          PrimaryButton(
            imageUrl: "assets/images/img_phone_white.png",
            btnText: "91118859",
          ),
          SizedBox(height: size.height * .02),
          Align(
              alignment: Alignment.centerLeft,
              child: Text("Танилцуулга татах",
                  style: CustomStyles.textMinimSemiBold(context))),
          SizedBox(height: size.height * .02),
          PrimaryButton(
            imageUrl: "assets/images/img_download.png",
            btnText: "PDF татах",
          ),
        ],
      ),
    );
  }
}

class PrimaryButton extends StatelessWidget {
  final String btnText;
  final String imageUrl;
  const PrimaryButton({Key? key, required this.btnText, required this.imageUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return InkWell(
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: primaryColor.withOpacity(0.3),
              spreadRadius: 1,
              blurRadius: 3,
              offset: const Offset(0, 3),
            ),
          ],
          borderRadius: BorderRadius.circular(8),
          color: primaryColor,
        ),
        width: size.width,
        height: size.height * .08,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(btnText,
                style: CustomStyles.textSmallmSemiBold(context,
                    textColor: whiteColor)),
            SizedBox(width: size.width * .05),
            Image.asset(imageUrl, width: size.width * .06)
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:khan_hills/utils/colors.dart';
import 'package:khan_hills/utils/custom_styles.dart';
import 'package:panorama/panorama.dart';

class PanoramaPhoto extends StatelessWidget {
  const PanoramaPhoto({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Stack(
      children: [
        Panorama(
          child: Image.network(
              "https://images.pexels.com/photos/207385/pexels-photo-207385.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"),
        ),
        Container(
          margin:
              EdgeInsets.only(top: size.height * .08, left: size.width * .35),
          child: Text("Гадна орчин 360",
              style: CustomStyles.textSmallmSemiBold(context,
                  textColor: whiteColor)),
        ),
        Material(
          type: MaterialType.transparency,
          child: Container(
            margin: EdgeInsets.only(
                top: size.height * .064, left: size.width * .05),
            child: IconButton(
              icon: Icon(
                Icons.arrow_back,
                size: 25,
                color: whiteColor,
              ),
              onPressed: () => Navigator.pop(context),
            ),
          ),
        ),
      ],
    );
  }
}

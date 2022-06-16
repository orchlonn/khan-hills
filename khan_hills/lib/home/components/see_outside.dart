import 'package:flutter/material.dart';

class SeeOutsidePhoto extends StatelessWidget {
  const SeeOutsidePhoto({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      child: Stack(children: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: size.height * .4,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: SizedBox.fromSize(
              size: const Size.fromRadius(40),
              child: Image.asset(
                "assets/images/img_choose_block.png",
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        // a vseg
        InkWell(
          onTap: () {},
          child: Container(
            margin:
                EdgeInsets.only(left: size.width * .03, top: size.height * .01),
            child: Image.asset(
              "assets/images/img_choose_block_a.png",
              height: size.height * .04,
            ),
          ),
        ),
        // b vseg
        InkWell(
          onTap: () {},
          child: Container(
            margin: EdgeInsets.only(
                left: size.width * .168, top: size.height * .31),
            child: Image.asset(
              "assets/images/img_choose_block_b.png",
              height: size.height * .04,
            ),
          ),
        ),
        // c vseg
        InkWell(
          onTap: () {},
          child: Container(
            margin:
                EdgeInsets.only(left: size.width * .79, top: size.height * .01),
            child: Image.asset(
              "assets/images/img_choose_block_c.png",
              height: size.height * .04,
            ),
          ),
        ),
        // d vseg
        InkWell(
          onTap: () {},
          child: Container(
            margin:
                EdgeInsets.only(left: size.width * .4, top: size.height * .12),
            child: Image.asset(
              "assets/images/img_choose_block_d.png",
              height: size.height * .04,
            ),
          ),
        ),
        // e vseg
        InkWell(
          onTap: () {},
          child: Container(
            margin: EdgeInsets.only(
                left: size.width * .415, top: size.height * .235),
            child: Image.asset(
              "assets/images/img_choose_block_e.png",
              height: size.height * .04,
            ),
          ),
        ),
        // f vseg
        InkWell(
          onTap: () {},
          child: Container(
            margin:
                EdgeInsets.only(left: size.width * .66, top: size.height * .31),
            child: Image.asset(
              "assets/images/img_choose_block_f.png",
              height: size.height * .04,
            ),
          ),
        ),
      ]),
    );
  }
}

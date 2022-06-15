import 'package:flutter/material.dart';

class ChooseBlockPhoto extends StatelessWidget {
  const ChooseBlockPhoto({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * .4,
      width: size.width,
      child: Stack(
        children: [
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
              margin: EdgeInsets.only(
                  left: size.width * .12, top: size.height * .032),
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
                  left: size.width * .418, top: size.height * .032),
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
              margin: EdgeInsets.only(
                  left: size.width * .72, top: size.height * .032),
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
              margin: EdgeInsets.only(
                  left: size.width * .168, top: size.height * .185),
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
                  left: size.width * .415, top: size.height * .185),
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
              margin: EdgeInsets.only(
                  left: size.width * .66, top: size.height * .185),
              child: Image.asset(
                "assets/images/img_choose_block_f.png",
                height: size.height * .04,
              ),
            ),
          ),
          // g vseg
          InkWell(
            onTap: () {},
            child: Container(
              margin: EdgeInsets.only(
                  left: size.width * .05, top: size.height * .305),
              child: Image.asset(
                "assets/images/img_choose_block_g.png",
                width: size.width * .09,
              ),
            ),
          ),
          // h vseg
          InkWell(
            onTap: () {},
            child: Container(
              margin: EdgeInsets.only(
                  left: size.width * .295, top: size.height * .305),
              child: Image.asset(
                "assets/images/img_choose_block_h.png",
                width: size.width * .09,
              ),
            ),
          ),
          // i vseg
          InkWell(
            onTap: () {},
            child: Container(
              margin: EdgeInsets.only(
                  left: size.width * .535, top: size.height * .305),
              child: Image.asset(
                "assets/images/img_choose_block_i.png",
                width: size.width * .09,
              ),
            ),
          ),
          // j vseg
          InkWell(
            onTap: () {},
            child: Container(
              margin: EdgeInsets.only(
                  left: size.width * .78, top: size.height * .305),
              child: Image.asset(
                "assets/images/img_choose_block_j.png",
                width: size.width * .09,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:khan_hills/block_detail/view/block_detail.dart';

class ChooseBlockPhoto extends StatelessWidget {
  String lang;
  ChooseBlockPhoto({Key? key, required this.lang}) : super(key: key);

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
          Container(
            margin: EdgeInsets.only(
                left: size.width * .12, top: size.height * .032),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          BlockDetail(lang: lang, blockId: 1)),
                );
              },
              child: Image.asset(
                "assets/images/img_choose_block_a.png",
                height: size.height * .04,
              ),
            ),
          ),
          // b vseg
          Container(
            margin: EdgeInsets.only(
                left: size.width * .418, top: size.height * .032),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          BlockDetail(lang: lang, blockId: 2)),
                );
              },
              child: Image.asset(
                "assets/images/img_choose_block_b.png",
                height: size.height * .04,
              ),
            ),
          ),
          // c vseg
          Container(
            margin: EdgeInsets.only(
                left: size.width * .72, top: size.height * .032),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          BlockDetail(lang: lang, blockId: 3)),
                );
              },
              child: Image.asset(
                "assets/images/img_choose_block_c.png",
                height: size.height * .04,
              ),
            ),
          ),
          // d vseg
          Container(
            margin: EdgeInsets.only(
                left: size.width * .168, top: size.height * .185),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          BlockDetail(lang: lang, blockId: 4)),
                );
              },
              child: Image.asset(
                "assets/images/img_choose_block_d.png",
                height: size.height * .04,
              ),
            ),
          ),
          // e vseg
          Container(
            margin: EdgeInsets.only(
                left: size.width * .415, top: size.height * .185),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          BlockDetail(lang: lang, blockId: 5)),
                );
              },
              child: Image.asset(
                "assets/images/img_choose_block_e.png",
                height: size.height * .04,
              ),
            ),
          ),
          // f vseg
          Container(
            margin: EdgeInsets.only(
                left: size.width * .66, top: size.height * .185),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          BlockDetail(lang: lang, blockId: 6)),
                );
              },
              child: Image.asset(
                "assets/images/img_choose_block_f.png",
                height: size.height * .04,
              ),
            ),
          ),
          // g vseg
          Container(
            margin: EdgeInsets.only(
                left: size.width * .05, top: size.height * .305),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          BlockDetail(lang: lang, blockId: 7)),
                );
              },
              child: Image.asset(
                "assets/images/img_choose_block_g.png",
                width: size.width * .09,
              ),
            ),
          ),
          // h vseg
          Container(
            margin: EdgeInsets.only(
                left: size.width * .295, top: size.height * .305),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          BlockDetail(lang: lang, blockId: 8)),
                );
              },
              child: Image.asset(
                "assets/images/img_choose_block_h.png",
                width: size.width * .09,
              ),
            ),
          ),
          // i vseg
          Container(
            margin: EdgeInsets.only(
                left: size.width * .535, top: size.height * .305),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          BlockDetail(lang: lang, blockId: 9)),
                );
              },
              child: Image.asset(
                "assets/images/img_choose_block_i.png",
                width: size.width * .09,
              ),
            ),
          ),
          // j vseg
          Container(
            margin: EdgeInsets.only(
                left: size.width * .78, top: size.height * .305),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          BlockDetail(lang: lang, blockId: 10)),
                );
              },
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

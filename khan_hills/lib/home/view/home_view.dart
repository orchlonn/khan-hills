import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:khan_hills/utils/colors.dart';
import 'package:khan_hills/utils/custom_styles.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: whiteColor,
          elevation: 0,
          leadingWidth: size.width * .15,
          leading: Container(
            margin: EdgeInsets.only(left: size.width * .05),
            child: Image.asset(
              "assets/images/img_mongolia.png",
            ),
          ),
          title: Text(
            "Khan Hills",
            style: CustomStyles.textMediumBold(context),
          ),
          actions: [
            Container(
                margin: EdgeInsets.only(right: size.width * .05),
                child: Image.asset(
                  "assets/images/notification.png",
                  width: size.width * .1,
                )),
          ],
        ),
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.only(
                  left: size.width * .05, right: size.width * .05),
              child: CarouselSlider(
                options: CarouselOptions(
                  viewportFraction: 1,
                  enableInfiniteScroll: true,
                  height: size.height * .2,
                  autoPlayInterval: const Duration(seconds: 3),
                  autoPlay: true,
                  autoPlayAnimationDuration: const Duration(milliseconds: 800),
                ),
                items: [1, 2, 3, 4, 5].map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              color: Colors.amber,
                              borderRadius: BorderRadius.circular(10)),
                          child: Text('text $i'));
                    },
                  );
                }).toList(),
              ),
            ),
          ],
        ));
  }
}

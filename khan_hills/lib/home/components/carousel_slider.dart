import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:khan_hills/home/components/notf_detail.dart';
import 'package:khan_hills/models/get_banner_list.dart';
import 'package:khan_hills/utils/colors.dart';
import 'package:khan_hills/utils/custom_styles.dart';

class CarouselSliderPage extends StatelessWidget {
  final List<BannerData>? data;
  const CarouselSliderPage({
    Key? key,
    required this.data,
    required CarouselController carouselController,
  })  : _carouselController = carouselController,
        super(key: key);

  final CarouselController _carouselController;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return CarouselSlider(
      carouselController: _carouselController,
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
            return Column(
              children: [
                SizedBox(
                  width: size.width,
                  height: size.height * .15,
                  child: Stack(children: [
                    Image.asset("assets/images/img-carousel.png",
                        width: size.width, fit: BoxFit.fill),
                    Container(
                      margin: EdgeInsets.only(
                          top: size.height * .08, left: size.width * .05),
                      child: Row(
                        children: [
                          Text(
                            "Хан хиллс хотхон",
                            style: CustomStyles.textMinimSemiBold(context,
                                textColor: whiteColor),
                          ),
                          const Spacer(),
                          IconButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: ((context) =>
                                            const NotfDetail())));
                              },
                              icon: Image.asset(
                                "assets/images/icon-push.png",
                                width: size.width * .02,
                              ))
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          top: size.height * .12, left: size.width * .05),
                      child: Text(
                        "Таны хүүхдиийн тоглох цэвэрхэн орчин.",
                        style: CustomStyles.textLittleMiniNormal(context,
                            textColor: whiteColor),
                      ),
                    ),
                  ]),
                ),
                Container(
                  margin: EdgeInsets.only(left: size.width * .18),
                  width: size.width,
                  height: size.height * .023,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: ((context, index) {
                      return Container(
                        margin: const EdgeInsets.all(5),
                        width: size.width * .08,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: i - 1 == index
                              ? primaryColor
                              : unselectedGreyColor,
                        ),
                      );
                    }),
                    itemCount: 5,
                  ),
                ),
              ],
            );
          },
        );
      }).toList(),
    );
  }
}

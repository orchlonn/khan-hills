import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:khan_hills/utils/colors.dart';

class CarouselSliderPage extends StatelessWidget {
  const CarouselSliderPage({
    Key? key,
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
                Container(
                  width: size.width,
                  height: size.height * .15,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 1),
                      borderRadius: BorderRadius.circular(10)),
                  child: Text('text $i'),
                ),
                Container(
                  // color: Colors.red,
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

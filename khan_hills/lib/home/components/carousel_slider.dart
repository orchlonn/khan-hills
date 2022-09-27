import 'dart:developer';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:khan_hills/models/get_banner_list.dart';
import 'package:khan_hills/notf/provider/notf_list_provider.dart';
import 'package:khan_hills/notf/view/medee.dart';
import 'package:khan_hills/utils/colors.dart';
import 'package:khan_hills/utils/custom_styles.dart';
import 'package:provider/provider.dart';

class CarouselSliderPage extends StatefulWidget {
  final List<BannerData>? data;
  String lang;
  CarouselSliderPage({
    Key? key,
    required this.data,
    required CarouselController carouselController,
    required this.lang,
  })  : _carouselController = carouselController,
        super(key: key);

  final CarouselController _carouselController;

  @override
  State<CarouselSliderPage> createState() => _CarouselSliderPageState();
}

class _CarouselSliderPageState extends State<CarouselSliderPage> {
  List<int> carouselList = [];
  @override
  void initState() {
    for (int i = 0; i < widget.data!.length; i++) {
      carouselList.add(i);
    }
    final data = Provider.of<NotfDetail>(context, listen: false);
    data.fetchNotifList(context, widget.lang);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // log(widget.data![2].thumbImg);
    return Consumer<NotfDetail>(builder: (context, value, child) {
      var notfList = value.getNotifList?.data;
      return CarouselSlider(
        carouselController: widget._carouselController,
        options: CarouselOptions(
          viewportFraction: 1,
          enableInfiniteScroll: true,
          height: size.height * .2,
          autoPlayInterval: const Duration(seconds: 3),
          autoPlay: true,
          autoPlayAnimationDuration: const Duration(milliseconds: 800),
        ),
        items: carouselList.map((i) {
          return Builder(
            builder: (BuildContext context) {
              return Column(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MedeeScreen(
                                  htmlCode: notfList![i].body,
                                  lang: widget.lang)));
                    },
                    child: SizedBox(
                      width: size.width,
                      height: size.height * .15,
                      child: Stack(children: [
                        CachedNetworkImage(
                          imageUrl: widget.data![i].thumbImg,
                          fit: BoxFit.fill,
                          width: size.width,
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              top: size.height * .07, left: size.width * .05),
                          child: Row(
                            children: [
                              Text(
                                widget.data![i].title,
                                style: CustomStyles.textMinimSemiBold(context,
                                    textColor: whiteColor),
                              ),
                              const Spacer(),
                              IconButton(
                                  onPressed: () {},
                                  icon: Image.asset(
                                    "assets/images/icon-push.png",
                                    width: size.width * .02,
                                  ))
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              top: size.height * .11, left: size.width * .05),
                          child: Text(
                            widget.data![i].headline,
                            style: CustomStyles.textLittleMiniNormal(context,
                                textColor: whiteColor),
                          ),
                        ),
                      ]),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: size.width * .265),
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
                            color:
                                i == index ? primaryColor : unselectedGreyColor,
                          ),
                        );
                      }),
                      itemCount: widget.data!.length,
                    ),
                  ),
                ],
              );
            },
          );
        }).toList(),
      );
    });
  }
}

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:khan_hills/utils/colors.dart';
import 'package:khan_hills/utils/custom_styles.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIndex = 0;

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
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 5),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(22.0),
            topRight: Radius.circular(22.0),
          ),
          child: BottomNavigationBar(
            selectedItemColor: primaryColor,
            showSelectedLabels: true,
            unselectedItemColor: Colors.grey,
            onTap: (index) => setState(() {
              currentIndex = index;
            }),
            currentIndex: currentIndex,
            items: [
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  "assets/images/icon_home.svg",
                  color: currentIndex == 0 ? primaryColor : Colors.grey,
                ),
                label: "Нүүр",
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  "assets/images/icon_aboud_us.svg",
                  color: currentIndex == 1 ? primaryColor : Colors.grey,
                ),
                label: "Бидний тухай",
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  "assets/images/icon_material.svg",
                  color: currentIndex == 2 ? primaryColor : Colors.grey,
                ),
                label: "Материал",
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  "assets/images/icon_contact.svg",
                  color: currentIndex == 3 ? primaryColor : Colors.grey,
                ),
                label: "Холбоо барих",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

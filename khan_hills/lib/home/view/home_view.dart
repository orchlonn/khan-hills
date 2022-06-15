import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:khan_hills/home/components/carousel_slider.dart';
import 'package:khan_hills/home/components/choose_block.dart';
import 'package:khan_hills/home/components/choose_block_photo.dart';
import 'package:khan_hills/home/components/outside_btn.dart';
import 'package:khan_hills/utils/colors.dart';
import 'package:khan_hills/utils/custom_styles.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final CarouselController _carouselController = CarouselController();
  int currentIndex = 0;
  int activeBtnIndex = 0;

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          color: bgColor,
          width: size.width,
          height: size.height,
        ),
        Image.asset(
          "assets/images/murui_bg.png",
          width: size.width,
          height: size.height,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
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

          body: Container(
            margin: EdgeInsets.only(
                left: size.width * .05, right: size.width * .05),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // header
                CarouselSliderPage(carouselController: _carouselController),
                //  buttons
                Row(
                  children: [
                    ChooseBlock(
                      onPressed: (() {
                        setState(() {
                          activeBtnIndex = 0;
                        });
                      }),
                      activeBtnIndex: activeBtnIndex,
                    ),
                    const Spacer(),
                    OutsideButton(
                      onPressed: (() {
                        setState(() {
                          activeBtnIndex = 1;
                        });
                      }),
                      activeBtnIndex: activeBtnIndex,
                    ),
                  ],
                ),
                SizedBox(height: size.height * .015),
                // positioned views
                const ChooseBlockPhoto(),
              ],
            ),
          ),

          //! bottom navbar
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
        ),
      ],
    );
  }
}

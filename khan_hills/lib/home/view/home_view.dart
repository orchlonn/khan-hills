import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:khan_hills/utils/colors.dart';
import 'package:khan_hills/utils/custom_styles.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final PageController _pageController = PageController();
  final CarouselController _carouselController = CarouselController();
  int currentIndex = 0;
  int carouselIndex = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

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
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(
                left: size.width * .05, right: size.width * .05),
            child: CarouselSlider(
              carouselController: _carouselController,
              options: CarouselOptions(
                viewportFraction: 1,
                enableInfiniteScroll: true,
                height: size.height * .25,
                autoPlayInterval: const Duration(seconds: 3),
                autoPlay: true,
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
              ),
              items: [1.0, 2.0, 3.0, 4.0, 5.0].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                        width: size.width,
                        height: size.height * .2,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 1),
                            borderRadius: BorderRadius.circular(10)),
                        child: Text('text $i'));
                  },
                );
              }).toList(),
            ),
          ),
          SmoothPageIndicator(
            controller: _pageController,
            count: 4,
            effect: const WormEffect(),
            onDotClicked: (index) {
              setState(() {
                Future.delayed(const Duration(milliseconds: 500), () {
                  setState(() {
                    print("gg");
                    // _pageController.initialPage = 2;
                  });
                });
              });
            },
          )
        ],
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
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "Нүүр",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "Бидний тухай",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "Материал",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "Холбоо барих",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

List<Widget> _demo = [
  Container(height: 300, color: Colors.amber),
  Container(height: 300, color: Colors.black),
  Container(height: 300, color: Colors.blue),
  Container(height: 300, color: Colors.green),
];

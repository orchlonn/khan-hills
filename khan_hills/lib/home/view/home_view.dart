import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:khan_hills/home/components/carousel_slider.dart';
import 'package:khan_hills/home/components/choose_block.dart';
import 'package:khan_hills/home/components/choose_block_photo.dart';
import 'package:khan_hills/home/components/detail_photo.dart';
import 'package:khan_hills/home/components/outside_btn.dart';
import 'package:khan_hills/home/components/see_outside.dart';
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
          appBar: currentIndex == 0
              ? AppBar(
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  leadingWidth: size.width * .15,
                  leading: Container(
                    margin: EdgeInsets.only(left: size.width * .05),
                    child: Image.asset("assets/images/img_mongolia.png"),
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
                )
              : currentIndex == 2
                  ? AppBar(
                      backgroundColor: Colors.transparent,
                      elevation: 0,
                      leadingWidth: size.width * .15,
                      leading: Container(
                        margin: EdgeInsets.only(left: size.width * .05),
                        child: Image.asset("assets/images/img_mongolia.png"),
                      ),
                      title: Text(
                        "Брендүүд",
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
                    )
                  : null,

          body: currentIndex == 0
              ? SingleChildScrollView(
                  child: Container(
                    margin: EdgeInsets.only(
                        left: size.width * .05, right: size.width * .05),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // header
                        CarouselSliderPage(
                            carouselController: _carouselController),
                        //  buttons
                        Row(
                          children: [
                            ChooseBlock(
                              activeIcon:
                                  "assets/images/icon_choose_block_selected.png",
                              nonActiveIcon:
                                  "assets/images/icon_choose_block_unselected.png",
                              title: "Блок сонгох",
                              onPressed: (() {
                                setState(() {
                                  activeBtnIndex = 0;
                                });
                              }),
                              activeBtnIndex: activeBtnIndex,
                            ),
                            const Spacer(),
                            OutsideButton(
                              title: "Гадна орчин",
                              activeImage:
                                  "assets/images/icon_outside_selected.png",
                              nonActiveImage:
                                  "assets/images/icon_outside_unselected.png",
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
                        activeBtnIndex == 0
                            ? const ChooseBlockPhoto()
                            : const SeeOutsidePhoto(),
                        SizedBox(height: size.height * .02),
                        // rooms
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "5 өрөө",
                              style: CustomStyles.textSmallmSemiBold(context),
                            )),
                        SizedBox(height: size.height * .01),
                        const DetailPhoto(
                            photoUrl: "assets/images/img_5rooms.png"),
                        SizedBox(height: size.height * .01),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "4 өрөө",
                              style: CustomStyles.textSmallmSemiBold(context),
                            )),
                        SizedBox(height: size.height * .01),
                        // details of 4 rooms
                        const DetailPhoto(
                            photoUrl: "assets/images/img_5rooms.png"),
                        SizedBox(height: size.height * .01),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "3 өрөө",
                              style: CustomStyles.textSmallmSemiBold(context),
                            )),
                        SizedBox(height: size.height * .01),
                        // details of 3 rooms
                        const DetailPhoto(
                            photoUrl: "assets/images/img_5rooms.png"),
                        Row(
                          children: [
                            Text(
                              "Материалууд",
                              style: CustomStyles.textSmallmSemiBold(context),
                            ),
                            SizedBox(width: size.width * .35),
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.navigate_next))
                          ],
                        ),
                        SizedBox(height: size.height * .01),
                      ],
                    ),
                  ),
                )
              //!current index = 1 buyu about us
              : currentIndex == 1
                  ? Column(
                      children: [
                        Stack(
                          children: [
                            Image.asset(
                              "assets/images/img_khan_hills_day.png",
                              fit: BoxFit.fill,
                              width: size.width,
                              height: size.height * .4,
                            ),
                            Container(
                              margin: EdgeInsets.only(top: size.height * .06),
                              child: Image.asset("assets/images/img_logo.png"),
                            )
                          ],
                        ),
                        //! select option
                        Container(
                          margin: EdgeInsets.symmetric(
                              vertical: size.height * .018,
                              horizontal: size.width * .04),
                          child: Row(
                            children: [
                              ChooseBlock(
                                activeIcon:
                                    "assets/images/img_orginization_active.png",
                                nonActiveIcon:
                                    "assets/images/img_orginization_nonActive.png",
                                title: "Байгууллага",
                                onPressed: (() {
                                  setState(() {
                                    activeBtnIndex = 0;
                                  });
                                }),
                                activeBtnIndex: activeBtnIndex,
                              ),
                              const Spacer(),
                              OutsideButton(
                                title: "Туршлага",
                                activeImage:
                                    "assets/images/img_experience_active.png",
                                nonActiveImage:
                                    "assets/images/img_experience_nonActive.png",
                                onPressed: (() {
                                  setState(() {
                                    activeBtnIndex = 1;
                                  });
                                }),
                                activeBtnIndex: activeBtnIndex,
                              ),
                            ],
                          ),
                        ),
                        activeBtnIndex == 0 ? Information() : Experience(),
                      ],
                    )
                  // assets/images/img_brand.png
                  : SingleChildScrollView(
                      child: Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: size.width * .04),
                        child: SizedBox(
                          height: size.height,
                          child: GridView.builder(
                              gridDelegate:
                                  const SliverGridDelegateWithMaxCrossAxisExtent(
                                      maxCrossAxisExtent: 250,
                                      childAspectRatio: 3 / 2,
                                      crossAxisSpacing: 20,
                                      mainAxisSpacing: 20),
                              itemCount: 8,
                              itemBuilder: (BuildContext ctx, index) {
                                return Container(
                                  alignment: Alignment.center,
                                  child: Image.asset(
                                      "assets/images/img_brand.png"),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15)),
                                );
                              }),
                        ),
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

class Experience extends StatelessWidget {
  const Experience({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: size.width * .04),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Хийж гүйцэтгэсэн төслүүд",
                style: CustomStyles.textMediumSemiBold(context),
              ),
            ),
            SizedBox(
              height: size.height * .37,
              child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 250,
                      childAspectRatio: 3 / 2,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20),
                  itemCount: 4,
                  itemBuilder: (BuildContext ctx, index) {
                    return Container(
                      alignment: Alignment.center,
                      child: Image.asset("assets/images/img_experience.png"),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15)),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}

class Information extends StatelessWidget {
  const Information({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: size.width * .04),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Компанийн танилцуулга",
              style: CustomStyles.textMediumSemiBold(context),
            ),
          ),
          SizedBox(height: size.height * .02),
          Text(
              "Mogul ibiz ХХК нь иргэний ба үйлдвэрийн барилга, дэд бүтцийн барилга байгууламж барих үйл ажиллагаа явуулах үндсэн зорилготойгоор 2010 онд үүсгэн байгуулагдсан. Манай компани нь байгуулагдсан цагаасаа хойш өөрсдийн хэрэгжүүлж буй орон сууцны төслүүдийнхээ барилга угсралтын ажлыг хийхийн зэрэгцээ, аж ахуй нэгж, иргэний захиалгын дагуу төрөл бүрийн иргэний ба үйлдвэрийн барилга байгуулмжийг барьж амжилттай ашиглалтанд хүлээлгэн өгсөн. Мөн барилга угсралт, зам гүүрийн байгууламж барих, засварлах зэрэг тусгай зөвшөөрлүүдийнхээ хүрээнд хөдөлмөр хамгаалал, чанарын баталгааг эрхэмлэн ажилласаар ирсэн."),
        ],
      ),
    );
  }
}

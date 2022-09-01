import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:khan_hills/home/components/all_brands.dart';
import 'package:khan_hills/home/components/carousel_slider.dart';
import 'package:khan_hills/home/components/choose_block.dart';
import 'package:khan_hills/home/components/choose_block_photo.dart';
import 'package:khan_hills/home/components/contact_page.dart';
import 'package:khan_hills/home/components/detail_material.dart';
import 'package:khan_hills/home/components/detail_photo.dart';
import 'package:khan_hills/home/components/experience.dart';
import 'package:khan_hills/home/components/information.dart';
import 'package:khan_hills/home/components/outside_btn.dart';
import 'package:khan_hills/home/components/see_outside.dart';
import 'package:khan_hills/models/get_brands.dart';
import 'package:khan_hills/notf/view/notf.dart';
import 'package:khan_hills/providers/main_provider.dart';
import 'package:khan_hills/utils/colors.dart';
import 'package:khan_hills/utils/custom_styles.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  String lang;
  Home({Key? key, required this.lang}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final CarouselController _carouselController = CarouselController();
  int currentIndex = 0;
  int activeBtnIndex = 0;

  void initState() {
    super.initState();
    final data = Provider.of<MainProvider>(context, listen: false);
    data.fetchBannerList(context, widget.lang);
    data.fetchBrandList(context, widget.lang);
    data.fetchRooms(context, widget.lang);
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Consumer<MainProvider>(builder: (((context, value, child) {
      var getBannerLists = value.getBannerList?.data;
      var getBrandList = value.getBrandList?.data;
      var getRooms = value.getRooms?.data;
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
                      child: widget.lang == "mn"
                          ? Image.asset("assets/images/img_mongolia.png")
                          : Image.asset("assets/images/img_america.png"),
                    ),
                    title: Text(
                        widget.lang == "en" ? "Khan Hills" : "Хан хиллс",
                        style: CustomStyles.textMediumBold(context)),
                    actions: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      NotificationsPage(lang: widget.lang)));
                        },
                        child: Container(
                            margin: EdgeInsets.only(right: size.width * .05),
                            child: Image.asset(
                              "assets/images/notification.png",
                              width: size.width * .1,
                            )),
                      ),
                    ],
                  )
                : currentIndex == 2
                    ? AppBar(
                        backgroundColor: Colors.transparent,
                        elevation: 0,
                        leadingWidth: size.width * .15,
                        leading: Container(
                          margin: EdgeInsets.only(left: size.width * .05),
                          child: widget.lang == "mn"
                              ? Image.asset("assets/images/img_mongolia.png")
                              : Image.asset("assets/images/img_america.png"),
                        ),
                        title: Text(
                          widget.lang == "mn" ? "Брендүүд" : "Brands",
                          style: CustomStyles.textMediumBold(context),
                        ),
                        actions: [
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => NotificationsPage(
                                          lang: widget.lang)));
                            },
                            child: Container(
                                margin:
                                    EdgeInsets.only(right: size.width * .05),
                                child: Image.asset(
                                  "assets/images/notification.png",
                                  width: size.width * .1,
                                )),
                          ),
                        ],
                      )
                    : currentIndex == 3
                        ? AppBar(
                            backgroundColor: Colors.transparent,
                            elevation: 0,
                            leadingWidth: size.width * .15,
                            title: Text(
                              widget.lang == "mn" ? "Холбоо барих" : "Contact",
                              style: CustomStyles.textMediumBold(context),
                            ),
                            actions: [
                              Container(
                                  margin:
                                      EdgeInsets.only(right: size.width * .05),
                                  child: Image.asset(
                                    "assets/images/img_phone.png",
                                    width: size.width * .07,
                                  )),
                            ],
                          )
                        : null,

            body:
                //! current index = 1 buyu home
                currentIndex == 0
                    ? SingleChildScrollView(
                        child: Container(
                          margin: EdgeInsets.only(
                              left: size.width * .05, right: size.width * .05),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              //! header
                              CarouselSliderPage(
                                carouselController: _carouselController,
                                data: getBannerLists,
                              ),
                              //! buttons
                              Row(
                                children: [
                                  ChooseBlock(
                                    width: .43,
                                    activeIcon:
                                        "assets/images/icon_choose_block_selected.png",
                                    nonActiveIcon:
                                        "assets/images/icon_choose_block_unselected.png",
                                    title: widget.lang == "mn"
                                        ? "Блок сонгох"
                                        : "Choose block",
                                    onPressed: (() {
                                      setState(() {
                                        activeBtnIndex = 0;
                                      });
                                    }),
                                    activeBtnIndex: activeBtnIndex,
                                  ),
                                  const Spacer(),
                                  OutsideButton(
                                    width: .43,
                                    title: widget.lang == "mn"
                                        ? "Гадна орчин"
                                        : "Outside",
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
                              //! positioned views
                              activeBtnIndex == 0
                                  ? ChooseBlockPhoto(lang: widget.lang)
                                  : const SeeOutsidePhoto(),
                              SizedBox(height: size.height * .02),
                              // rooms
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    getRooms![0].name,
                                    style: CustomStyles.textSmallmSemiBold(
                                        context),
                                  )),
                              SizedBox(height: size.height * .01),
                              DetailPhoto(
                                  lang: widget.lang,
                                  photoUrl: getRooms[0].aparts),
                              SizedBox(height: size.height * .01),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    getRooms[1].name,
                                    style: CustomStyles.textSmallmSemiBold(
                                        context),
                                  )),
                              SizedBox(height: size.height * .01),
                              // details of 4 rooms
                              DetailPhoto(
                                  lang: widget.lang,
                                  photoUrl: getRooms[1].aparts),
                              SizedBox(height: size.height * .01),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    getRooms[2].name,
                                    style: CustomStyles.textSmallmSemiBold(
                                        context),
                                  )),
                              SizedBox(height: size.height * .01),
                              // details of 3 rooms
                              DetailPhoto(
                                  lang: widget.lang,
                                  photoUrl: getRooms[2].aparts),
                              // materials
                              Row(
                                children: [
                                  Text(
                                    widget.lang == "en"
                                        ? "Materials"
                                        : "Материалууд",
                                    style: CustomStyles.textSmallmSemiBold(
                                        context),
                                  ),
                                  SizedBox(width: size.width * .42),
                                  IconButton(
                                      onPressed: () {
                                        setState(() {
                                          currentIndex = 2;
                                        });
                                      },
                                      icon: const Icon(Icons.navigate_next))
                                ],
                              ),
                              //! material detail
                              DetailMaterial(
                                  getBrandList:
                                      getBrandList as List<GetBrandList>),
                              SizedBox(height: size.height * .01),
                              // location
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                      widget.lang == "mn"
                                          ? "Хотхоны байршил"
                                          : "Apartment location",
                                      style: CustomStyles.textMinimSemiBold(
                                          context))),
                              SizedBox(height: size.height * .01),
                              Image.asset("assets/images/img_map.png"),
                            ],
                          ),
                        ),
                      )
                    //! current index = 1 buyu about us
                    : currentIndex == 1
                        ? Column(
                            children: [
                              Stack(
                                children: [
                                  Image.asset(
                                    activeBtnIndex == 0
                                        ? "assets/images/img_khan_hills_day.png"
                                        : "assets/images/img_bg_dark.png",
                                    fit: BoxFit.fill,
                                    width: size.width,
                                    height: size.height * .4,
                                  ),
                                  Container(
                                    margin:
                                        EdgeInsets.only(top: size.height * .04),
                                    child: Image.asset(
                                        "assets/images/img_logo.png"),
                                  )
                                ],
                              ),
                              //! select option
                              Container(
                                margin: EdgeInsets.only(
                                  top: size.height * .018,
                                  left: size.width * .04,
                                  right: size.width * .04,
                                ),
                                child: Row(
                                  children: [
                                    ChooseBlock(
                                      width: .43,
                                      activeIcon:
                                          "assets/images/img_orginization_active.png",
                                      nonActiveIcon:
                                          "assets/images/img_orginization_nonActive.png",
                                      title: widget.lang == "mn"
                                          ? "Байгууллага"
                                          : "Organization",
                                      onPressed: (() {
                                        setState(() {
                                          activeBtnIndex = 0;
                                        });
                                      }),
                                      activeBtnIndex: activeBtnIndex,
                                    ),
                                    const Spacer(),
                                    OutsideButton(
                                      width: .43,
                                      title: widget.lang == "mn"
                                          ? "Туршлага"
                                          : "Experience",
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
                              activeBtnIndex == 0
                                  ? Information()
                                  : Experience(),
                            ],
                          )
                        //! current index = 2 buyu brands
                        : currentIndex == 2
                            ? BrandsPage(
                                brandData: getBrandList, lang: widget.lang)
                            //! current index = 3 buyu contact
                            : ContactPage(lang: widget.lang),

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
                      label: widget.lang == "mn" ? "Нүүр" : "Home",
                    ),
                    BottomNavigationBarItem(
                      icon: SvgPicture.asset(
                        "assets/images/icon_aboud_us.svg",
                        color: currentIndex == 1 ? primaryColor : Colors.grey,
                      ),
                      label: widget.lang == "mn" ? "Бидний тухай" : "About us",
                    ),
                    BottomNavigationBarItem(
                      icon: SvgPicture.asset(
                        "assets/images/icon_material.svg",
                        color: currentIndex == 2 ? primaryColor : Colors.grey,
                      ),
                      label: widget.lang == "mn" ? "Материал" : "Material",
                    ),
                    BottomNavigationBarItem(
                      icon: SvgPicture.asset(
                        "assets/images/icon_contact.svg",
                        color: currentIndex == 3 ? primaryColor : Colors.grey,
                      ),
                      label: widget.lang == "mn" ? "Холбоо барих" : "Contact",
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      );
    })));
  }
}

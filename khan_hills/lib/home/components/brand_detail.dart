import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:khan_hills/notf/view/notf.dart';
import 'package:khan_hills/utils/colors.dart';
import 'package:khan_hills/utils/custom_styles.dart';
import 'package:provider/provider.dart';

import '../../providers/main_provider.dart';

class BrandDetail extends StatefulWidget {
  String id;
  String lang;
  BrandDetail({Key? key, required this.lang, required this.id})
      : super(key: key);

  @override
  State<BrandDetail> createState() => _BrandDetailState();
}

class _BrandDetailState extends State<BrandDetail> {
  List<String> imageUrl = [
    "https://www.kangton.com/uploads/main-img.jpg",
    "https://www.kangton.com/uploads/191.jpg",
    "https://www.kangton.com/uploads/2-KT51.jpg",
    "https://www.kangton.com/uploads/KD01A-oak-shaker.jpg",
  ];

  String doorImageUrl = '';
  void changeDoorImage(url) {
    setState(() {
      doorImageUrl = url;
    });
  }

  @override
  void initState() {
    super.initState();
    final data = Provider.of<MainProvider>(context, listen: false);
    data.fetchBrandDetails(context, widget.lang, widget.id);
    doorImageUrl = "https://www.kangton.com/uploads/main-img.jpg";
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Consumer<MainProvider>(builder: (context, value, child) {
      if (value.isLoading == true) {
        return const Scaffold(
          body: Center(child: CircularProgressIndicator()),
        );
      }
      final brandDetailData = value.getBrandDetails!.data;
      return Stack(
        children: [
          Container(
            width: size.width,
            height: size.height,
            // color: const Color(0xFFe2d8e1),
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromARGB(255, 235, 218, 233),
                  Color.fromARGB(255, 208, 167, 155),
                ],
              ),
            ),
          ),
          Image.asset("assets/images/image_murui_saaral.png"),
          Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              leading: IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              elevation: 0,
              title: Text(
                "Хаалга",
                style: CustomStyles.textSmallmSemiBold(context,
                    textColor: whiteColor),
              ),
              actions: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => NotificationsPage(
                                  lang: widget.lang,
                                )));
                  },
                  child: Container(
                      margin: EdgeInsets.only(right: size.width * .05),
                      child: Image.asset(
                        "assets/images/icon_notf_white.png",
                        width: size.width * .075,
                      )),
                ),
              ],
            ),
            body: Column(
              children: [
                Container(
                  width: size.width,
                  height: size.height * .385,
                  margin: EdgeInsets.only(top: size.height * .025),
                  child: Column(
                    children: [
                      CachedNetworkImage(
                        imageUrl: doorImageUrl,
                        height: size.height * 0.23,
                      ),
                      SizedBox(height: size.height * .04),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          InkWell(
                            onTap: () {
                              changeDoorImage(imageUrl[0]);
                            },
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 5),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(
                                      width: 1, color: Colors.white)),
                              child: CachedNetworkImage(
                                imageUrl: imageUrl[0],
                                width: size.width * .075,
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              changeDoorImage(imageUrl[1]);
                            },
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 5),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(
                                      width: 1, color: Colors.white)),
                              child: CachedNetworkImage(
                                  imageUrl: imageUrl[1],
                                  width: size.width * .075),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              changeDoorImage(imageUrl[2]);
                            },
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 5),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(
                                      width: 1, color: Colors.white)),
                              child: CachedNetworkImage(
                                  imageUrl: imageUrl[2],
                                  width: size.width * .075),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              changeDoorImage(imageUrl[3]);
                            },
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 5),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(
                                      width: 1, color: Colors.white)),
                              child: CachedNetworkImage(
                                  imageUrl: imageUrl[3],
                                  width: size.width * .075),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                    ),
                    width: size.width,
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            const SizedBox(height: 5),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Column(
                                  children: [
                                    SizedBox(
                                      width: size.height * 0.09,
                                      height: size.height * 0.09,
                                      child: Image.asset(
                                        "assets/images/door_icon.png",
                                      ),
                                    ),
                                    Text(
                                      brandDetailData[0].desc1,
                                      style:
                                          const TextStyle(color: primaryColor),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    SizedBox(
                                      width: size.height * 0.09,
                                      height: size.height * 0.09,
                                      child: Image.asset(
                                        "assets/images/wood_icon.png",
                                      ),
                                    ),
                                    Text(
                                      brandDetailData[0].desc2,
                                      style:
                                          const TextStyle(color: primaryColor),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    SizedBox(
                                      width: size.height * 0.09,
                                      height: size.height * 0.09,
                                      child: Image.asset(
                                        "assets/images/color_icon.png",
                                      ),
                                    ),
                                    Text(
                                      brandDetailData[0].desc3,
                                      style:
                                          const TextStyle(color: primaryColor),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(height: 5),
                            Html(data: brandDetailData[0].body),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      );
    });
  }
}

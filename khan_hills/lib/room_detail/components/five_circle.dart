import 'dart:developer';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

import '../../block_detail/model/apart_detail_model.dart';
import '../../utils/colors.dart';

class FiveCircle extends StatefulWidget {
  String urlPhoto;
  ApartDetailModel rooms;
  FiveCircle({
    super.key,
    required this.urlPhoto,
    required this.rooms,
  });

  @override
  State<FiveCircle> createState() => _FiveCircleState();
}

class _FiveCircleState extends State<FiveCircle> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double currentIndex = 0;
    int activeIndex = 0;
    var roomData = widget.rooms.data[0];

    return Stack(
      children: [
        Positioned(
          child: CachedNetworkImage(
            imageUrl: widget.urlPhoto,
            height: size.height * .4,
            width: size.width,
          ),
        ),
        // a vseg
        Positioned(
            top: size.height * double.parse(roomData.room[1].positionTop),
            left: size.width * double.parse(roomData.room[1].positionLeft),
            child: InkWell(
              onTap: () {
                myDialog(
                  context,
                  currentIndex,
                  activeIndex,
                  [
                    roomData.room[1].img1,
                    roomData.room[1].img2,
                    roomData.room[1].img3,
                    roomData.room[1].img4,
                  ],
                );
              },
              child: Image.asset(
                "assets/images/img_choose_block_a.png",
                width: size.width * .07,
              ),
            )),
        // b vseg
        Positioned(
            top: size.height * double.parse(roomData.room[2].positionTop),
            left: size.width * double.parse(roomData.room[2].positionLeft),
            child: InkWell(
              onTap: () {
                myDialog(
                  context,
                  currentIndex,
                  activeIndex,
                  [
                    roomData.room[2].img1,
                    roomData.room[2].img2,
                    roomData.room[2].img3,
                    roomData.room[2].img4,
                  ],
                );
              },
              child: Image.asset(
                "assets/images/img_choose_block_b.png",
                width: size.width * .07,
              ),
            )),
        // c vseg
        Positioned(
            left: size.width * double.parse(roomData.room[3].positionLeft),
            top: size.height * double.parse(roomData.room[3].positionTop),
            child: InkWell(
              onTap: () {
                myDialog(
                  context,
                  currentIndex,
                  activeIndex,
                  [
                    roomData.room[3].img1,
                    roomData.room[3].img2,
                    roomData.room[3].img3,
                    roomData.room[3].img4,
                  ],
                );
              },
              child: Image.asset(
                "assets/images/img_choose_block_c.png",
                width: size.width * .07,
              ),
            )),
        // d vseg
        Positioned(
            left: size.width * double.parse(roomData.room[4].positionLeft),
            top: size.height * double.parse(roomData.room[4].positionTop),
            child: InkWell(
              onTap: () {
                myDialog(
                  context,
                  currentIndex,
                  activeIndex,
                  [
                    roomData.room[4].img1,
                    roomData.room[4].img2,
                    roomData.room[4].img3,
                    roomData.room[4].img4,
                  ],
                );
              },
              child: Image.asset(
                "assets/images/img_choose_block_c.png",
                width: size.width * .07,
              ),
            )),
        // e vseg
        Positioned(
            left: size.width * double.parse(roomData.room[0].positionLeft),
            top: size.height * double.parse(roomData.room[0].positionTop),
            child: InkWell(
              onTap: () {
                myDialog(
                  context,
                  currentIndex,
                  activeIndex,
                  [
                    roomData.room[0].img1,
                    roomData.room[0].img2,
                    roomData.room[0].img3,
                    roomData.room[0].img4,
                  ],
                );
              },
              child: Image.asset(
                "assets/images/img_choose_block_c.png",
                width: size.width * .07,
              ),
            )),
      ],
    );
  }
}

myDialog(context, currentIndex, activeIndex, imageList) {
  Size size = MediaQuery.of(context).size;
  int activeIndex = 0;
  return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          titlePadding: const EdgeInsets.all(0),
          title: Container(
            height: size.height * 0.6,
            width: size.width * 0.9,
            child: Center(
              child: Stack(
                children: [
                  CarouselSlider.builder(
                    options: CarouselOptions(
                      viewportFraction: 1,
                      height: size.height * 0.6,
                      onPageChanged: (index, reason) {
                        log(index.toString());
                      },
                    ),
                    itemCount: imageList.length,
                    itemBuilder: ((context, index, realIndex) {
                      final urlImage = imageList[index];
                      return Container(
                        child: CachedNetworkImage(
                          imageUrl: urlImage,
                          fit: BoxFit.cover,
                        ),
                      );
                    }),
                  ),
                ],
              ),
            ),
          ),
        );
      });
}

// //! pop up
// showDialogFunction(context, currentIndex, pageIndex) {
//   Size size = MediaQuery.of(context).size;
//   return showDialog(
//       context: context,
//       builder: (context) {
//         return Center(
//           child: Stack(
//             children: [
//               Container(
//                 margin: EdgeInsets.symmetric(
//                     horizontal: size.height * .03, vertical: size.height * .1),
//                 height: size.height * .7,
//                 child: ClipRRect(
//                   borderRadius: BorderRadius.circular(10),
//                   child: Image.network(
//                     imageList[pageIndex + 1],
//                     fit: BoxFit.cover,
//                     height: size.height * .7,
//                   ),
//                 ),
//               ),
//               Positioned(
//                 top: size.height * .12,
//                 left: size.width * .78,
//                 child: Material(
//                     type: MaterialType.transparency,
//                     child: IconButton(
//                       icon: const Icon(
//                         Icons.close_sharp,
//                         size: 18,
//                         color: Colors.white,
//                       ),
//                       onPressed: () {
//                         Navigator.pop(context);
//                       },
//                     )),
//               ),
//               Material(
//                 type: MaterialType.transparency,
//                 child: Container(
//                   margin: EdgeInsets.only(
//                       left: size.width * .1, top: size.height * .65),
//                   child: InkWell(
//                     onTap: () {
//                       print("left button");
//                     },
//                     child: Image.asset(
//                       "assets/images/icon_right_circle.png",
//                       width: size.width * .14,
//                     ),
//                   ),
//                 ),
//               ),
//               Material(
//                 type: MaterialType.transparency,
//                 child: Center(
//                   child: Container(
//                     margin: EdgeInsets.only(top: size.height * .5),
//                     child: DotsIndicator(
//                       dotsCount: 3,
//                       position: currentIndex + 1,
//                       decorator: DotsDecorator(
//                         color: Colors.white,
//                         activeColor: primaryColor,
//                         size: const Size.square(9.0),
//                         activeSize: const Size(18.0, 9.0),
//                         activeShape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(5.0)),
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//               Material(
//                 type: MaterialType.transparency,
//                 child: Container(
//                   margin: EdgeInsets.only(
//                     left: size.width * .77,
//                     top: size.height * .65,
//                   ),
//                   child: InkWell(
//                     onTap: () {},
//                     child: Image.asset(
//                       "assets/images/icon_right_circle.png",
//                       width: size.width * .14,
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         );
//       });
// }

// final List<String> imageList = [
//   "https://cdn.pixabay.com/photo/2017/12/03/18/04/christmas-balls-2995437_960_720.jpg",
//   "https://cdn.pixabay.com/photo/2017/12/13/00/23/christmas-3015776_960_720.jpg",
//   "https://cdn.pixabay.com/photo/2019/12/19/10/55/christmas-market-4705877_960_720.jpg",
//   "https://cdn.pixabay.com/photo/2019/12/20/00/03/road-4707345_960_720.jpg",
//   "https://cdn.pixabay.com/photo/2019/12/22/04/18/x-mas-4711785__340.jpg",
//   "https://cdn.pixabay.com/photo/2016/11/22/07/09/spruce-1848543__340.jpg"
// ];

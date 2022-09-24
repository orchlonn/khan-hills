import 'dart:developer';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

import '../../block_detail/model/apart_detail_model.dart';
import '../../utils/colors.dart';

class FourCircle extends StatefulWidget {
  String urlPhoto;
  ApartDetailModel rooms;
  FourCircle({
    super.key,
    required this.urlPhoto,
    required this.rooms,
  });

  @override
  State<FourCircle> createState() => _FourCircleState();
}

class _FourCircleState extends State<FourCircle> {
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
//                     imageList[pageIndex],
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
//                     child: RotationTransition(
//                       turns: new AlwaysStoppedAnimation(180 / 360),
//                       child: Image.asset(
//                         "assets/images/icon_right_circle.png",
//                         width: size.width * .14,
//                       ),
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
//                       dotsCount: 4,
//                       position: currentIndex,
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
//                     onTap: () {
//                       print(pageIndex);
//                       pageIndex++;
//                       print("right button");
//                     },
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



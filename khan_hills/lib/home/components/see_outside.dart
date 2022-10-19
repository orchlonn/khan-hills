import 'dart:developer';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class SeeOutsidePhoto extends StatefulWidget {
  const SeeOutsidePhoto({Key? key}) : super(key: key);

  @override
  State<SeeOutsidePhoto> createState() => _SeeOutsidePhotoState();
}

class _SeeOutsidePhotoState extends State<SeeOutsidePhoto> {
  @override
  Widget build(BuildContext context) {
    List<String> a_imgs = [
      "assets/images/outside_img/ok1.jpg",
      "assets/images/outside_img/ok2.jpg",
      "assets/images/outside_img/ok3.jpg",
      "assets/images/outside_img/ok4.jpg",
      "assets/images/outside_img/ok5.jpg",
      "assets/images/outside_img/ok6.jpg",
    ];
    List<String> b_imgs = [
      "assets/images/outside_img/ok7.jpg",
      "assets/images/outside_img/ok8.jpg",
      "assets/images/outside_img/ok9.jpg",
      "assets/images/outside_img/ok10.jpg",
      "assets/images/outside_img/ok11.jpg",
      "assets/images/outside_img/ok12.jpg",
    ];
    List<String> c_imgs = [
      "assets/images/outside_img/ok13.jpg",
      "assets/images/outside_img/ok14.jpg",
      "assets/images/outside_img/ok15.jpg",
      "assets/images/outside_img/ok16.jpg",
      "assets/images/outside_img/ok17.jpg",
      "assets/images/outside_img/ok18.jpg",
      "assets/images/outside_img/ok19.jpg",
    ];

    List<String> d_imgs = [
      "assets/images/outside_img/ok20.jpg",
      "assets/images/outside_img/ok21.jpg",
      "assets/images/outside_img/ok22.jpg",
      "assets/images/outside_img/ok23.jpg",
      "assets/images/outside_img/ok20.jpg",
      "assets/images/outside_img/ok24.jpg",
      "assets/images/outside_img/ok25.jpg",
      "assets/images/outside_img/ok26.jpg",
      "assets/images/outside_img/ok24.jpg",
      "assets/images/outside_img/ok27.jpg",
      "assets/images/outside_img/ok28.jpg",
    ];
    List<String> e_imgs = [
      "assets/images/outside_img/ok29.jpg",
      "assets/images/outside_img/ok30.jpg",
      "assets/images/outside_img/ok31.jpg",
      "assets/images/outside_img/ok32.jpg",
      "assets/images/outside_img/ok33.jpg",
      "assets/images/outside_img/ok34.jpg",
      "assets/images/outside_img/ok35.jpg",
      "assets/images/outside_img/ok36.jpg",
    ];

    List<String> f_imgs = [
      "assets/images/outside_img/ok37.jpg",
      "assets/images/outside_img/ok20.jpg",
      "assets/images/outside_img/ok38.jpg",
      "assets/images/outside_img/ok39.jpg",
      "assets/images/outside_img/ok33.jpg",
      "assets/images/outside_img/ok21.jpg",
      "assets/images/outside_img/ok26.jpg",
      "assets/images/outside_img/ok30.jpg",
    ];
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      child: Stack(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: size.height * .4,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: SizedBox.fromSize(
                size: const Size.fromRadius(40),
                child: Image.asset(
                  "assets/images/img_choose_block.png",
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Positioned(
            left: size.width * 0.02,
            top: size.height * 0.01,
            child: InkWell(
              onTap: () {
                myDialog(context, a_imgs);
              },
              child: Image.asset(
                "assets/images/img_choose_block_a.png",
                height: size.height * 0.04,
              ),
            ),
          ),
          Positioned(
            left: size.width * 0.18,
            bottom: size.height * 0.05,
            child: InkWell(
              onTap: () {
                myDialog(context, b_imgs);
              },
              child: Image.asset(
                "assets/images/img_choose_block_b.png",
                height: size.height * 0.04,
              ),
            ),
          ),
          Positioned(
            right: size.width * 0.02,
            top: size.height * 0.01,
            child: InkWell(
              onTap: () {
                myDialog(context, c_imgs);
              },
              child: Image.asset(
                "assets/images/img_choose_block_c.png",
                height: size.height * 0.04,
              ),
            ),
          ),
          Positioned(
            left: size.width * 0.43,
            top: size.height * 0.13,
            child: InkWell(
              onTap: () {
                myDialog(context, d_imgs);
              },
              child: Image.asset(
                "assets/images/img_choose_block_d.png",
                height: size.height * 0.04,
              ),
            ),
          ),
          Positioned(
            left: size.width * 0.43,
            top: size.height * 0.23,
            child: InkWell(
              onTap: () {
                myDialog(context, e_imgs);
              },
              child: Image.asset(
                "assets/images/img_choose_block_e.png",
                height: size.height * 0.04,
              ),
            ),
          ),
          Positioned(
            right: size.width * 0.15,
            bottom: size.height * 0.05,
            child: InkWell(
              onTap: () {
                myDialog(context, f_imgs);
              },
              child: Image.asset(
                "assets/images/img_choose_block_f.png",
                height: size.height * 0.04,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

myDialog(context, imageList) {
  Size size = MediaQuery.of(context).size;
  return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          titlePadding: const EdgeInsets.all(0),
          title: SizedBox(
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
                      return Image.asset(
                        urlImage,
                        fit: BoxFit.cover,
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

// SizedBox(
//       child: Stack(
//         children: [
// SizedBox(
//   width: MediaQuery.of(context).size.width,
//   height: size.height * .4,
//   child: ClipRRect(
//     borderRadius: BorderRadius.circular(20),
//     child: SizedBox.fromSize(
//       size: const Size.fromRadius(40),
//       child: Image.asset(
//         "assets/images/img_choose_block.png",
//         fit: BoxFit.fill,
//       ),
//     ),
//   ),
// ),

//           Positioned(
//             child: Container(
//               color: Colors.blue,
//               child: InkWell(
//                 onTap: () {
//                   print("AAAA");
//                 },
// child: Image.asset("assets/images/img_choose_block_a.png"),
//               ),
//             ),
//           ),
//           // a vseg
//           // InkWell(
//           //   onTap: () {
//           //     print("AAA");
//           //   },
//           //   child: Container(
//           //     margin:
//           //         EdgeInsets.only(left: size.width * .03, top: size.height * .01),
//           //     child: Image.asset(
//           //       "assets/images/img_choose_block_a.png",
//           //       height: size.height * .2,
//           //     ),
//           //   ),
//           // ),

//           // b vseg
//           InkWell(
//             onTap: () {},
//             child: Container(
//               margin: EdgeInsets.only(
//                   left: size.width * .168, top: size.height * .31),
//               child: Image.asset(
// "assets/images/img_choose_block_b.png",
//                 height: size.height * .04,
//               ),
//             ),
//           ),
//           // c vseg
//           InkWell(
//             onTap: () {},
//             child: Container(
//               margin: EdgeInsets.only(
//                   left: size.width * .79, top: size.height * .01),
//               child: Image.asset(
//                 "assets/images/img_choose_block_c.png",
//                 height: size.height * .04,
//               ),
//             ),
//           ),
//           // d vseg
//           InkWell(
//             onTap: () {
//               print("gddd");
//               myDialog(context, d_imgs);
//             },
//             child: Container(
//               margin: EdgeInsets.only(
//                   left: size.width * .4, top: size.height * .12),
//               child: Image.asset(
//                 "assets/images/img_choose_block_d.png",
//                 height: size.height * .04,
//               ),
//             ),
//           ),
//           // e vseg
//           InkWell(
//             onTap: () {},
//             child: Container(
//               margin: EdgeInsets.only(
//                   left: size.width * .415, top: size.height * .235),
//               child: Image.asset(
//                 "assets/images/img_choose_block_e.png",
//                 height: size.height * .04,
//               ),
//             ),
//           ),
//           // f vseg
//           InkWell(
//             onTap: () {},
//             child: Container(
//               margin: EdgeInsets.only(
//                   left: size.width * .66, top: size.height * .31),
//               child: Image.asset(
//                 "assets/images/img_choose_block_f.png",
//                 height: size.height * .04,
//               ),
//             ),
//           ),
//         ],
//       ),
//     );

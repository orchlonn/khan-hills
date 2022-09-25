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
      "assets/images/outside_img/8989_3 - Photo.jpg",
      "assets/images/outside_img/205.jpg",
      "assets/images/outside_img/2022.04.05._6 - Photo.jpg",
      "assets/images/outside_img/2022.04.05._9 - Photo.jpg",
      "assets/images/outside_img/565_34 - Photo.jpg",
      "assets/images/outside_img/565_35 - Photo.jpg",
    ];
    List<String> b_imgs = [
      "assets/images/outside_img/565_32 - Photo.jpg",
      "assets/images/outside_img/2022.04.05._3 - Photo.jpg",
      "assets/images/outside_img/7878_13 - Photo.jpg",
      "assets/images/outside_img/7878_11 - Photo.jpg",
      "assets/images/outside_img/hk_17 - Photo.jpg",
      "assets/images/outside_img/hk_13 - Photo.jpg",
    ];
    List<String> c_imgs = [
      "assets/images/outside_img/206 copy.jpg",
      "assets/images/outside_img/2022.04.05._4 - Photo.jpg",
      "assets/images/outside_img/2022.04.05._7 - Photo.jpg",
      "assets/images/outside_img/2022.04.05._10 - Photo.jpg",
      "assets/images/outside_img/7878_14 - Photo.jpg",
      "assets/images/outside_img/7878_15 - Photo.jpg",
      "assets/images/outside_img/7878_19 - Photo.jpg",
    ];

    List<String> d_imgs = [
      "assets/images/outside_img/ddd_41 - Photo.jpg",
      "assets/images/outside_img/ddd_42 - Photo.jpg",
      "assets/images/outside_img/ddd_43 - Photo copy.jpg",
      "assets/images/outside_img/ddd_44 - Photo.jpg",
      "assets/images/outside_img/7878_14 - Photo.jpg",
      "assets/images/outside_img/ddd_45 - Photo.jpg",
      "assets/images/outside_img/2022.04.05._5 - Photo.jpg",
      "assets/images/outside_img/ddd_46 - Photo.jpg",
      "assets/images/outside_img/7878_15 - Photo.jpg",
      "assets/images/outside_img/ddd_47 - Photo.jpg",
      "assets/images/outside_img/7878_16 - Photo.jpg",
      "assets/images/outside_img/ddd_48 - Photo.jpg",
      "assets/images/outside_img/ddd_49 - Photo.jpg",
      "assets/images/outside_img/ddd_50 - Photo.jpg",
      "assets/images/outside_img/305.jpg",
    ];
    List<String> e_imgs = [
      "assets/images/outside_img/7878_12 - Photo.jpg",
      "assets/images/outside_img/a1_51 - Photo copy.jpg",
      "assets/images/outside_img/a1_52 - Photo.jpg",
      "assets/images/outside_img/a1_53 - Photo.jpg",
      "assets/images/outside_img/a1_54 - Photo.jpg",
      "assets/images/outside_img/a1_55 - Photo.jpg",
      "assets/images/outside_img/a1_57 - Photo.jpg",
      "assets/images/outside_img/hk_12 - Photo.jpg",
    ];

    List<String> f_imgs = [
      "assets/images/outside_img/8989_7 - Photo.jpg",
      "assets/images/outside_img/2022.04.05._3 - Photo.jpg",
      "assets/images/outside_img/301.jpg",
      "assets/images/outside_img/302.jpg",
      "assets/images/outside_img/hk_17 - Photo.jpg",
      "assets/images/outside_img/7878_13 - Photo.jpg",
      "assets/images/outside_img/hk_13 - Photo.jpg",
      "assets/images/outside_img/7878_11 - Photo.jpg",
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

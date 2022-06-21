import 'package:flutter/material.dart';
import 'package:khan_hills/home/components/choose_block.dart';
import 'package:khan_hills/home/components/outside_btn.dart';
import 'package:khan_hills/home/components/third_btn.dart';
import 'package:khan_hills/room_detail/components/photo_side.dart';
import 'package:khan_hills/utils/colors.dart';
import 'package:khan_hills/utils/custom_styles.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class RoomDetail extends StatefulWidget {
  const RoomDetail({Key? key}) : super(key: key);

  @override
  State<RoomDetail> createState() => _RoomDetailState();
}

class _RoomDetailState extends State<RoomDetail> {
  late YoutubePlayerController controller;
  int currentIndex = 0;
  int activeBtnIndex = 0;

  @override
  void initState() {
    super.initState();
    const url =
        "https://www.youtube.com/watch?v=FvOpPeKSf_4&list=RDFvOpPeKSf_4&index=1";
    controller = YoutubePlayerController(
        initialVideoId: YoutubePlayer.convertUrlToId(url)!);
  }

  @override
  void deactivate() {
    controller.pause();
    super.deactivate();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return YoutubePlayerBuilder(
        player: YoutubePlayer(
          controller: controller,
        ),
        builder: (context, player) => Stack(
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
                    elevation: 0,
                    backgroundColor: Colors.transparent,
                    leading: IconButton(
                      icon: const Icon(Icons.arrow_back,
                          size: 27, color: blackColor),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    title: Text("Өрөө",
                        style: CustomStyles.textMediumBold(context)),
                    actions: [
                      Container(
                        margin: EdgeInsets.only(right: size.width * .05),
                        child: Image.asset(
                          "assets/images/img_phone.png",
                          width: size.width * .07,
                        ),
                      )
                    ],
                  ),
                  body: Container(
                    margin: EdgeInsets.only(
                        left: size.width * .04,
                        right: size.width * .04,
                        top: size.height * .015),
                    child: Column(
                      children: [
                        //! three choose section
                        Row(
                          children: [
                            ChooseBlock(
                              width: .29,
                              activeIcon:
                                  "assets/images/img_orginization_active.png",
                              nonActiveIcon:
                                  "assets/images/img_orginization_nonActive.png",
                              title: "Зураг",
                              onPressed: (() {
                                setState(() {
                                  activeBtnIndex = 0;
                                });
                              }),
                              activeBtnIndex: activeBtnIndex,
                            ),
                            const Spacer(),
                            OutsideButton(
                              width: .29,
                              title: "Видео",
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
                            const Spacer(),
                            ThirdBtn(
                              width: .29,
                              title: "360",
                              activeImage:
                                  "assets/images/img_experience_active.png",
                              nonActiveImage:
                                  "assets/images/img_experience_nonActive.png",
                              onPressed: (() {
                                setState(() {
                                  activeBtnIndex = 2;
                                });
                              }),
                              activeBtnIndex: activeBtnIndex,
                            ),
                          ],
                        ),
                        SizedBox(height: size.height * .025),
                        activeBtnIndex == 0
                            //! Photo side
                            ? PhotoSide()
                            : activeBtnIndex == 1
                                ? Column(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(12),
                                            border: Border.all(
                                                width: 1, color: primaryColor)),
                                        height: size.height * .05,
                                        width: size.width,
                                        child: Center(
                                          child: Text(
                                            "Та видеогоо тоглуулж өрөөний дэлгэрэнгүйг үзээрэй",
                                            style: CustomStyles
                                                .textLittleMiniNormal(context,
                                                    textColor: primaryColor),
                                          ),
                                        ),
                                      ),
                                      // room detail video
                                      Container(
                                        padding: EdgeInsets.symmetric(
                                            vertical: size.height * .03,
                                            horizontal: size.width * .02),
                                        child: player,
                                      ),
                                    ],
                                  )
                                : Container(
                                    height: 100,
                                    width: 100,
                                    color: Colors.red,
                                  )
                      ],
                    ),
                  ),
                ),
              ],
            ));
  }
}

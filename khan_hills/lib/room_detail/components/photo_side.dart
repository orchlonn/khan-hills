import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:khan_hills/block_detail/model/apart_detail_model.dart';
import 'package:khan_hills/room_detail/components/five_circle.dart';
import 'package:khan_hills/room_detail/components/four_circle.dart';
import 'package:khan_hills/room_detail/components/three_circle.dart';
import 'package:khan_hills/utils/colors.dart';
import 'package:khan_hills/utils/custom_styles.dart';

class PhotoSide extends StatefulWidget {
  String lang;
  String urlPhoto;
  String htmlCode;
  ApartDetailModel rooms;
  PhotoSide({
    Key? key,
    required this.lang,
    required this.urlPhoto,
    required this.htmlCode,
    required this.rooms,
  }) : super(key: key);

  @override
  State<PhotoSide> createState() => _PhotoSideState();
}

class _PhotoSideState extends State<PhotoSide> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // log(widget.rooms.data[0].room.length.toString());
    return SizedBox(
      height: size.height * 0.75,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(width: 1, color: primaryColor)),
              height: size.height * .05,
              width: size.width,
              child: Center(
                child: Text(
                  widget.lang == "mn"
                      ? "Та өрөөн дээр дарж дэлгэрэнгүй зураг үзээрэй"
                      : "Click on the room to see more pictures",
                  style: CustomStyles.textLittleMiniNormal(context,
                      textColor: primaryColor),
                ),
              ),
            ),
            widget.rooms.data[0].room.length == 3
                ? ThreeCirlce(
                    urlPhoto: widget.urlPhoto,
                    rooms: widget.rooms,
                  )
                : widget.rooms.data[0].room.length == 4
                    ? FourCircle(
                        urlPhoto: widget.urlPhoto,
                        rooms: widget.rooms,
                      )
                    : widget.rooms.data[0].room.length == 5
                        ? FiveCircle(
                            urlPhoto: widget.urlPhoto,
                            rooms: widget.rooms,
                          )
                        : Container(),
            //! html haruulna end
            Html(data: widget.htmlCode),
          ],
        ),
      ),
    );
  }
}

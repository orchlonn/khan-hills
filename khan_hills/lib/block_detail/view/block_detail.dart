import 'package:flutter/material.dart';
import 'package:khan_hills/block_detail/components/drop_down_btn.dart';
import 'package:khan_hills/home/components/detail_photo.dart';
import 'package:khan_hills/utils/colors.dart';
import 'package:khan_hills/utils/custom_styles.dart';

class BlockDetail extends StatefulWidget {
  const BlockDetail({Key? key}) : super(key: key);

  @override
  State<BlockDetail> createState() => _BlockDetailState();
}

class _BlockDetailState extends State<BlockDetail> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
            width: size.width,
            height: size.height,
            color: const Color(0xFFe2d8e1)),
        Image.asset("assets/images/image_murui_saaral.png"),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            title: Text(
              "Block A",
              style: CustomStyles.textSmallmSemiBold(context,
                  textColor: whiteColor),
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: Image.asset(
                  "assets/images/img_phone_white.png",
                  width: size.width * .055,
                ),
              ),
            ],
          ),
          body: Container(
            height: size.height,
            width: size.width,
            padding: EdgeInsets.symmetric(horizontal: size.width * .04),
            decoration: const BoxDecoration(
              color: Color(0xFFfafafc),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10), topRight: Radius.circular(10)),
            ),
            child: Column(
              children: [
                SizedBox(height: size.height * .02),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [DropDownBtn(), DropDownBtn(), DropDownBtn()],
                ),
                SizedBox(height: size.height * .02),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text("5 өрөө",
                        style: CustomStyles.textSmallmSemiBold(context))),
                SizedBox(height: size.height * .01),
                // DetailPhoto(photoUrl: widget.getRooms[2].aparts),
                // SizedBox(height: size.height * .01),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text("4 өрөө",
                        style: CustomStyles.textSmallmSemiBold(context))),
                SizedBox(height: size.height * .01),
                // DetailPhoto(photoUrl: widget.getRooms[2].aparts),
                // SizedBox(height: size.height * .01),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text("3 өрөө",
                        style: CustomStyles.textSmallmSemiBold(context))),
                SizedBox(height: size.height * .01),
                // DetailPhoto(photoUrl: widget.getRooms[2].aparts),
                // SizedBox(height: size.height * .01),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

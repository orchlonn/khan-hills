import 'package:flutter/material.dart';
import 'package:khan_hills/block_detail/components/drop_down_btn.dart';
import 'package:khan_hills/block_detail/components/query_room.dart';
import 'package:khan_hills/block_detail/components/room_detail_query.dart';
import 'package:khan_hills/block_detail/provider/block_detail_provider.dart';
import 'package:khan_hills/utils/colors.dart';
import 'package:khan_hills/utils/custom_styles.dart';
import 'package:provider/provider.dart';

class BlockDetail extends StatefulWidget {
  String lang;
  BlockDetail({Key? key, required this.lang}) : super(key: key);

  @override
  State<BlockDetail> createState() => _BlockDetailState();
}

class _BlockDetailState extends State<BlockDetail> {
  int modelId = 0;
  @override
  void initState() {
    super.initState();
    final data = Provider.of<BlockDetailProvider>(context, listen: false);
    data.fetchModelList(context, widget.lang);
    data.fetchFloorList(context, widget.lang);
    data.fetchRoomSize(context, widget.lang);
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Consumer<BlockDetailProvider>(builder: ((context, value, child) {
      var getModel = value.getModelList?.data;
      var getFloor = value.getFloorList?.data;
      var getRoomSize = value.getRoomSize?.data;
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
                icon: const Icon(Icons.arrow_back),
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
                  icon: Image.asset("assets/images/img_phone_white.png",
                      width: size.width * .055),
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
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10)),
              ),
              child: Column(
                children: [
                  SizedBox(height: size.height * .02),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      DropDownBtn(
                        modelData: getModel,
                        hintText: widget.lang == "mn" ? "Загвар" : "Model",
                        onCountChanged: (ind) {
                          setState(() {
                            print("index1 : $ind");
                            modelId = ind;
                          });
                        },
                      ),
                      DropDownBtn(
                        modelData: getFloor,
                        hintText: widget.lang == "mn" ? "Давхар" : "Floor",
                        onCountChanged: (ind) {
                          setState(() {
                            print("index2 : $ind");
                          });
                        },
                      ),
                      DropDownBtn(
                        modelData: getRoomSize,
                        hintText: widget.lang == "mn" ? "Хэмжээ" : "Size",
                        onCountChanged: (ind) {
                          setState(() {
                            print("index3 : $ind");
                          });
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: size.height * .02),
                  RoomDetailQuery(
                    modelId: modelId,
                    lang: widget.lang,
                  ),
                  // Expanded(
                  //   child: ListView.builder(
                  //     itemBuilder: ((context, index) {
                  //       return Column(
                  //         children: [
                  //           Align(
                  //               alignment: Alignment.centerLeft,
                  //               child: Text(
                  //                 getRoomsWithQuery[index].name,
                  //                 style:
                  //                     CustomStyles.textSmallmSemiBold(context),
                  //               )),
                  //           SizedBox(height: size.height * .01),
                  //           QueryRoom(
                  //             photoUrl: getRoomsWithQuery[index].aparts,
                  //             lang: widget.lang,
                  //           ),
                  //           SizedBox(height: size.height * .02),
                  //         ],
                  //       );
                  //     }),
                  //     itemCount: getRoomsWithQuery.length,
                  //   ),
                  // ),
                ],
              ),
            ),
          ),
        ],
      );
    }));
  }
}

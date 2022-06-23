import 'package:flutter/material.dart';
import 'package:khan_hills/utils/colors.dart';
import 'package:khan_hills/utils/custom_styles.dart';

class BlockDetail extends StatefulWidget {
  const BlockDetail({Key? key}) : super(key: key);

  @override
  State<BlockDetail> createState() => _BlockDetailState();
}

class _BlockDetailState extends State<BlockDetail> {
  @override
  String dropdownvalue = 'Item 1';

  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Material(
          child: Container(
            child: Image.asset("assets/images/murui_bg.png"),
          ),
        ),
        Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.red,
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
                icon: Image.asset("assets/images/img_phone_white.png"),
              ),
            ],
          ),
          body: Container(
            decoration: const BoxDecoration(
              color: Colors.teal,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10), topRight: Radius.circular(10)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(
                      vertical: size.height * .01,
                      horizontal: size.width * .015),
                  width: size.width * .285,
                  child: Column(
                    children: [
                      Text("data1"),
                      Text("data1"),
                      Text("data1"),
                      Text("data1"),
                      Text("data1"),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(
                      vertical: size.height * .01,
                      horizontal: size.width * .015),
                  width: size.width * .285,
                  child: Column(
                    children: [
                      Text("data2"),
                      Text("data2"),
                      Text("data2"),
                      Text("data2"),
                      Text("data2"),
                      Text("data2"),
                    ],
                  ),
                ),
                Container(
                  width: size.width * .27,
                  margin: EdgeInsets.symmetric(
                      vertical: size.height * .01,
                      horizontal: size.width * .015),
                  child: Column(
                    children: [
                      Text("data"),
                      Text("data"),
                      Text("data"),
                      Text("data"),
                      Text("data"),
                      Text("data"),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

var items = [
  'Item 1',
  'Item 2',
  'Item 3',
  'Item 4',
  'Item 5',
];

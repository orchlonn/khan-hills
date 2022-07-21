import 'package:flutter/material.dart';
import 'package:khan_hills/notf/view/notf.dart';
import 'package:khan_hills/utils/colors.dart';
import 'package:khan_hills/utils/custom_styles.dart';

class BrandDetail extends StatelessWidget {
  String lang;
  BrandDetail({Key? key, required this.lang}) : super(key: key);

  Widget _imageDetail(Size size) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(width: 1, color: whiteColor)),
        child: Image.asset("assets/images/gg.png", width: size.width * .075),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
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
                                lang: lang,
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
          // body: WebView(
          //   javascriptMode: JavascriptMode.unrestricted,
          //   initialUrl: "https://www.facebook.com/",
          // ),
          body: Column(
            children: [
              Container(
                width: size.width,
                height: size.height * .385,
                margin: EdgeInsets.only(top: size.height * .025),
                child: Column(
                  children: [
                    Image.asset("assets/images/gg.png"),
                    SizedBox(height: size.height * .04),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        _imageDetail(size),
                        _imageDetail(size),
                        _imageDetail(size),
                        _imageDetail(size),
                      ],
                    ),

                    // Container(
                    //   width: size.width,
                    //   height: size.height * .1,
                    //   color: Colors.blue,
                    //   child: ListView.separated(
                    //     separatorBuilder: (context, index) =>
                    //         SizedBox(height: 10),
                    //     scrollDirection: Axis.horizontal,
                    //     itemCount: 4,
                    //     itemBuilder: ((context, index) {
                    //       return Container(
                    //         width: 20,
                    //         height: 20,
                    //         color: Colors.orange,
                    //       );
                    //     }),
                    //   ),
                    // )
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  width: size.width,
                  color: Colors.white,
                  child: SingleChildScrollView(
                    child: Center(
                      child: Text("Coming soon ..."),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

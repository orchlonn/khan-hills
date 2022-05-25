import 'package:flutter/material.dart';

class ChooseLanguage extends StatelessWidget {
  const ChooseLanguage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Image.asset(
          "assets/images/img_building_bg.png",
          height: size.height * 1,
          width: size.width * 1,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text("data"),
              Text("Hello"),
              Text("Хэл сонгох/Choose language")
            ],
          ),
        ),
      ],
    );
  }
}

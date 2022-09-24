import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:khan_hills/models/get_information.dart';
import 'package:khan_hills/utils/custom_styles.dart';

class Information extends StatefulWidget {
  String htmlData;
  Information({
    Key? key,
    required this.htmlData,
  }) : super(key: key);

  @override
  State<Information> createState() => _InformationState();

  static InformationModel? fromJson(data) {}
}

class _InformationState extends State<Information> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.43,
      margin: EdgeInsets.symmetric(horizontal: size.width * .04),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: size.height * .02),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Компанийн танилцуулга",
                style: CustomStyles.textMediumSemiBold(context),
              ),
            ),
            SizedBox(height: size.height * .02),
            Html(data: widget.htmlData),
          ],
        ),
      ),
    );
  }
}

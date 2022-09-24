import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:khan_hills/notf/view/notf.dart';
import 'package:khan_hills/utils/colors.dart';
import 'package:khan_hills/utils/custom_styles.dart';
import 'package:webview_flutter/webview_flutter.dart';

class MedeeScreen extends StatefulWidget {
  String htmlCode;
  String lang;
  MedeeScreen({
    Key? key,
    required this.htmlCode,
    required this.lang,
  }) : super(key: key);

  @override
  State<MedeeScreen> createState() => _MedeeScreenState();
}

class _MedeeScreenState extends State<MedeeScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          width: size.width,
          height: size.height,
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
        Image.asset("assets/images/medee_bg.png"),
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
              widget.lang == "mn" ? "Мэдээ" : "News",
              style: CustomStyles.textSmallmSemiBold(context,
                  textColor: whiteColor),
            ),
          ),
          body: Stack(
            children: [
              Positioned(
                bottom: 0,
                child: Container(
                  width: size.width,
                  height: size.height * 0.7,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                  child: SingleChildScrollView(
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 20,
                      ),
                      child: Html(
                        data: widget.htmlCode,
                      ),
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

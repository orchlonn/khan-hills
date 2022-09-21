import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:khan_hills/notf/view/notf.dart';
import 'package:khan_hills/utils/colors.dart';
import 'package:khan_hills/utils/custom_styles.dart';
import 'package:webview_flutter/webview_flutter.dart';

class MedeeScreen extends StatefulWidget {
  String htmlCode;
  MedeeScreen({
    Key? key,
    required this.htmlCode,
  }) : super(key: key);

  @override
  State<MedeeScreen> createState() => _MedeeScreenState();
}

class _MedeeScreenState extends State<MedeeScreen> {
  late WebViewController controller;
  @override
  void initState() {
    super.initState();
  }

  void loadLocalHtml(html) async {
    final url = Uri.dataFromString(
      '''$html''',
      mimeType: 'text/html',
      encoding: Encoding.getByName('utf-8'),
    ).toString();
    controller.loadUrl(url);
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
              "Мэдээ",
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
                      )),
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 20),
                    child: WebView(
                      javascriptMode: JavascriptMode.unrestricted,
                      onWebViewCreated: (controller) {
                        this.controller = controller;
                        loadLocalHtml(widget.htmlCode);
                      },
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

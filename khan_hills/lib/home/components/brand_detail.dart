import 'package:flutter/material.dart';
import 'package:khan_hills/notf/view/notf.dart';
import 'package:khan_hills/utils/colors.dart';
import 'package:khan_hills/utils/custom_styles.dart';
import 'package:webview_flutter/webview_flutter.dart';

class BrandDetail extends StatelessWidget {
  const BrandDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        elevation: 0,
        // backgroundColor: Colors.transparent,
        title: Text(
          "Хаалга",
          style:
              CustomStyles.textSmallmSemiBold(context, textColor: whiteColor),
        ),
        actions: [
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const NotificationsPage()));
            },
            child: Container(
                margin: EdgeInsets.only(right: size.width * .05),
                child: Image.asset(
                  "assets/images/notification.png",
                  width: size.width * .075,
                )),
          ),
        ],
      ),
      body: WebView(
        javascriptMode: JavascriptMode.unrestricted,
        initialUrl: "https://www.facebook.com/",
      ),
    );
  }
}

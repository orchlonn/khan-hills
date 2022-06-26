import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class NotfDetail extends StatelessWidget {
  const NotfDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WebView(
        javascriptMode: JavascriptMode.unrestricted,
        initialUrl: "https://www.facebook.com/",
      ),
    );
  }
}

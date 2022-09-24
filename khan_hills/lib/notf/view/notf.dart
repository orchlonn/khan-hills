import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:khan_hills/home/components/information.dart';
import 'package:khan_hills/notf/provider/notf_list_provider.dart';
import 'package:khan_hills/notf/view/medee.dart';
import 'package:khan_hills/utils/colors.dart';
import 'package:khan_hills/utils/custom_styles.dart';
import 'package:provider/provider.dart';

class NotificationsPage extends StatefulWidget {
  String lang;
  NotificationsPage({Key? key, required this.lang}) : super(key: key);

  @override
  State<NotificationsPage> createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  void initState() {
    super.initState();
    final data = Provider.of<NotfDetail>(context, listen: false);
    data.fetchNotifList(context, widget.lang);
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Consumer<NotfDetail>(builder: ((context, value, child) {
      var notfList = value.getNotifList?.data;
      // log(notfList![0].body);
      return Stack(
        children: [
          Container(
            color: bgColor,
            width: size.width,
            height: size.height,
          ),
          Image.asset(
            "assets/images/murui_bg.png",
            width: size.width,
            height: size.height,
          ),
          Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
                backgroundColor: Colors.transparent,
                elevation: 0,
                title: Text(
                  widget.lang == "mn" ? "Мэдэгдэл" : "Notification",
                  style: CustomStyles.textMediumBold(context),
                ),
                leading: IconButton(
                  icon: const Icon(Icons.arrow_back, color: blackColor),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                )),
            body: SingleChildScrollView(
              child: SizedBox(
                width: size.width,
                height: size.height,
                child: ListView.builder(
                  itemBuilder: ((context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MedeeScreen(
                                    lang: widget.lang,
                                    htmlCode: notfList![index].body)));
                      },
                      child: Container(
                        margin: EdgeInsets.symmetric(
                            vertical: size.height * .01,
                            horizontal: size.width * .06),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(width: 1, color: primaryColor)),
                        child: Column(
                          children: [
                            ListTile(
                              dense: true,
                              visualDensity: const VisualDensity(
                                  horizontal: 0, vertical: -4),
                              title: Text(
                                notfList![index].title,
                                style: CustomStyles.textMinimSemiBold(context,
                                    textColor: primaryColor),
                              ),
                              subtitle: Text(
                                notfList[index].createdDate,
                                style: CustomStyles.textMiniNormal(context,
                                    textColor: primaryColor),
                              ),
                              trailing: const Icon(Icons.arrow_forward_ios,
                                  color: primaryColor),
                            ),
                            ListTile(
                                dense: true,
                                visualDensity: const VisualDensity(
                                    horizontal: 0, vertical: -4),
                                title: Text(
                                  notfList[index].headline as String,
                                  style: CustomStyles.textMiniNormal(context,
                                      textColor: primaryColor),
                                ),
                                subtitle: const Text(""),
                                trailing: Image.asset(
                                  "assets/images/icon_sale.png",
                                )),
                          ],
                        ),
                      ),
                    );
                  }),
                  itemCount: notfList?.length,
                ),
              ),
            ),
          ),
        ],
      );
    }));
  }
}

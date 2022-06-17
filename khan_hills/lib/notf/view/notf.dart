import 'package:flutter/material.dart';
import 'package:khan_hills/utils/colors.dart';
import 'package:khan_hills/utils/custom_styles.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
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
                "Мэдэгдэл",
                style: CustomStyles.textMediumBold(context),
              ),
              leading: IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  color: blackColor,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              )),
          body: SingleChildScrollView(
            child: Container(
              width: size.width,
              height: size.height,
              child: ListView.builder(
                itemBuilder: ((context, index) {
                  return InkWell(
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
                            visualDensity:
                                VisualDensity(horizontal: 0, vertical: -4),
                            title: Text(
                              "10% хямдрал зараллаа",
                              style: CustomStyles.textMinimSemiBold(context,
                                  textColor: primaryColor),
                            ),
                            subtitle: Text(
                              '2022.12.11',
                              style: CustomStyles.textMiniNormal(context,
                                  textColor: primaryColor),
                            ),
                            trailing: Container(
                                child: Icon(
                              Icons.arrow_forward_ios,
                              color: primaryColor,
                            )),
                          ),
                          ListTile(
                              dense: true,
                              visualDensity:
                                  VisualDensity(horizontal: 0, vertical: -4),
                              title: Text(
                                'Бид эхний байр захиалсан 100 хэрэглэгчдээ 10% хямдрал зараллаа та яараарай.',
                                style: CustomStyles.textMiniNormal(context,
                                    textColor: primaryColor),
                              ),
                              subtitle: Text(""),
                              trailing: Image.asset(
                                "assets/images/icon_sale.png",
                              )),
                        ],
                      ),
                    ),
                  );
                }),
                itemCount: 5,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

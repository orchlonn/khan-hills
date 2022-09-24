import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:khan_hills/utils/colors.dart';
import 'package:khan_hills/utils/custom_styles.dart';
import 'package:provider/provider.dart';

import '../../providers/main_provider.dart';

class Experience extends StatefulWidget {
  String lang;
  Experience({
    Key? key,
    required this.lang,
  }) : super(key: key);

  @override
  State<Experience> createState() => _ExperienceState();
}

class _ExperienceState extends State<Experience> {
  @override
  void initState() {
    final data = Provider.of<MainProvider>(context, listen: false);
    data.fetchHistory(context, widget.lang);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Consumer<MainProvider>(builder: (context, value, child) {
      var historyData = value.getHistory!.data;
      return Container(
        margin: EdgeInsets.symmetric(horizontal: size.width * .04),
        child: Column(
          children: [
            SizedBox(height: size.height * .02),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Хийж гүйцэтгэсэн төслүүд",
                style: CustomStyles.textMediumSemiBold(context),
              ),
            ),
            SizedBox(height: size.height * .02),
            SizedBox(
              height: size.height * .36,
              child: GridView.builder(
                padding: const EdgeInsets.all(0),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                ),
                itemBuilder: (BuildContext ctx, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: primaryColor,
                          width: 1,
                          style: BorderStyle.solid,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        children: [
                          CachedNetworkImage(
                            imageUrl: historyData[index].imgUrl,
                          ),
                          const SizedBox(height: 10),
                          Text(
                            historyData[index].name,
                            style: const TextStyle(
                                fontSize: 15,
                                color: primaryColor,
                                fontWeight: FontWeight.bold),
                          ),
                          // Text("${historyData[index].id}"),
                        ],
                      ),
                    ),
                  );
                },
                itemCount: historyData.length,
              ),
            ),
          ],
        ),
      );
    });
  }
}

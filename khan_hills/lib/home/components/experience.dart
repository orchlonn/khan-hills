import 'package:flutter/material.dart';
import 'package:khan_hills/utils/custom_styles.dart';

class Experience extends StatelessWidget {
  const Experience({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: size.width * .04),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Хийж гүйцэтгэсэн төслүүд",
                style: CustomStyles.textMediumSemiBold(context),
              ),
            ),
            SizedBox(
              height: size.height * .37,
              child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 250,
                      childAspectRatio: 3 / 2,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20),
                  itemCount: 4,
                  itemBuilder: (BuildContext ctx, index) {
                    return Container(
                      alignment: Alignment.center,
                      child: Image.asset("assets/images/img_experience.png"),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15)),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}

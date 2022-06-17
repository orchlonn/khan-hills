import 'package:flutter/material.dart';

class BrandsPage extends StatelessWidget {
  const BrandsPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: size.width * .04),
        child: SizedBox(
          height: size.height,
          child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 250,
                  childAspectRatio: 3 / 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20),
              itemCount: 20,
              itemBuilder: (BuildContext ctx, index) {
                return Container(
                  alignment: Alignment.center,
                  child: Image.asset("assets/images/img_brand.png"),
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(15)),
                );
              }),
        ),
      ),
    );
  }
}

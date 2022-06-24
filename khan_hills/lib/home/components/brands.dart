import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:khan_hills/models/get_brands.dart';

class BrandsPage extends StatelessWidget {
  List<Datum>? brandData;
  BrandsPage({Key? key, required this.brandData}) : super(key: key);

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
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10),
              itemCount: brandData?.length,
              itemBuilder: (BuildContext ctx, index) {
                return Container(
                  alignment: Alignment.center,
                  child:
                      CachedNetworkImage(imageUrl: brandData![index].thumbImg),
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(15)),
                );
              }),
        ),
      ),
    );
  }
}

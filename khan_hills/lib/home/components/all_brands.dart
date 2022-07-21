import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:khan_hills/home/components/brand_detail.dart';
import 'package:khan_hills/models/get_brands.dart';
import 'package:khan_hills/utils/colors.dart';

class BrandsPage extends StatelessWidget {
  String lang;
  List<GetBrandList>? brandData;
  BrandsPage({Key? key, required this.brandData, required this.lang})
      : super(key: key);

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
                  height: size.height * .15,
                  margin: EdgeInsets.only(
                    left: size.width * .035,
                    right: size.width * .015,
                  ),
                  child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => BrandDetail(
                                      lang: lang,
                                    )));
                      },
                      child: CachedNetworkImage(
                          imageUrl: brandData![index].thumbImg)),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 1,
                        blurRadius: 3,
                        offset: const Offset(3, 5),
                      ),
                    ],
                    border: Border.all(width: 1, color: primaryColor),
                    borderRadius: BorderRadius.circular(10),
                  ),
                );
              }),
        ),
      ),
    );
  }
}

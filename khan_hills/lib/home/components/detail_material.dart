import 'package:flutter/material.dart';
import 'package:khan_hills/home/components/brand_detail.dart';
import 'package:khan_hills/models/get_brands.dart';
import 'package:khan_hills/utils/colors.dart';

class DetailMaterial extends StatelessWidget {
  String lang;
  List<GetBrandList>? brandData;
  DetailMaterial(
      {Key? key,
      required this.getBrandList,
      required this.brandData,
      required this.lang})
      : super(key: key);

  List<GetBrandList> getBrandList;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SizedBox(
      height: size.height * .18,
      width: size.width,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: ((context, index) {
          return InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => BrandDetail(
                            id: brandData![index].id.toString(),
                            lang: lang,
                          )));
            },
            child: Container(
              margin: const EdgeInsets.all(10),
              width: size.width * .3,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 1,
                    blurRadius: 3,
                    offset: const Offset(1, 3),
                  ),
                ],
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(getBrandList[index].thumbImg),
                ),
              ),
            ),
          );
        }),
        itemCount: getBrandList.length,
      ),
    );
  }
}

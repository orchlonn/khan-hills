import 'package:flutter/material.dart';
import 'package:khan_hills/block_detail/model/aparts_with_query.dart';

import 'package:khan_hills/room_detail/view/room_detail.dart';
import 'package:khan_hills/utils/colors.dart';

class QueryRoom extends StatelessWidget {
  String lang;
  QueryRoom({Key? key, required this.lang, required this.photoUrl})
      : super(key: key);
  final List<Apart> photoUrl;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * .23,
      width: size.width,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: ((context, index) {
          return InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: ((context) => RoomDetail(lang: lang))));
            },
            child: Container(
              margin: const EdgeInsets.all(10),
              width: size.width * .37,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: primaryColor.withOpacity(0.3),
                    spreadRadius: 3,
                    blurRadius: 5,
                    offset: const Offset(3, 5),
                  ),
                ],
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(photoUrl[index].thumbImg),
                ),
              ),
            ),
          );
        }),
        itemCount: photoUrl.length,
      ),
    );
  }
}

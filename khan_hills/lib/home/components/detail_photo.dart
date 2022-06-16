import 'package:flutter/material.dart';
import 'package:khan_hills/utils/colors.dart';

class DetailPhoto extends StatelessWidget {
  const DetailPhoto({Key? key, required this.photoUrl}) : super(key: key);
  final String photoUrl;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SizedBox(
      height: size.height * .23,
      width: size.width,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: ((context, index) {
          return Container(
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
              image: const DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage("https://picsum.photos/250?image=9"),
              ),
            ),
          );
          // return SizedBox(
          //   width: size.width * .6,
          //   child: FittedBox(
          //     child: Image.asset(photoUrl, fit: BoxFit.fill),
          //   ),
          // );
        }),
        itemCount: 4,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:khan_hills/models/get_room_numbers.dart';
import 'package:khan_hills/room_detail/view/room_detail.dart';
import 'package:khan_hills/utils/colors.dart';

class DetailPhoto extends StatelessWidget {
  const DetailPhoto({Key? key, required this.photoUrl}) : super(key: key);
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
                      builder: ((context) => const RoomDetail())));
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
              // child: FittedBox(
              //   child: CachedNetworkImage(
              //     imageUrl: photoUrl[index].thumbImg,
              //     fit: BoxFit
              //         .fill, // I thought this would fill up my Container but it doesn't
              //   ),
              // ),
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

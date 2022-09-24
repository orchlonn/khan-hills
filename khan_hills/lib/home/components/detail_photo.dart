import 'package:flutter/material.dart';
import 'package:khan_hills/block_detail/model/apart_detail_model.dart';
import 'package:khan_hills/models/get_room_with_apart.dart';
import 'package:khan_hills/room_detail/view/room_detail.dart';
import 'package:khan_hills/utils/colors.dart';
import 'package:provider/provider.dart';

import '../../providers/main_provider.dart';

class DetailPhoto extends StatefulWidget {
  String lang;

  DetailPhoto({
    Key? key,
    required this.lang,
    required this.photoUrl,
  }) : super(key: key);
  final List<Apart> photoUrl;

  @override
  State<DetailPhoto> createState() => _DetailPhotoState();
}

class _DetailPhotoState extends State<DetailPhoto> {
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
              // final data = Provider.of<MainProvider>(context, listen: false);
              // data.fetchApartDetail(
              //     context, widget.lang, widget.photoUrl[index].id);
              // print(data.getApartDetail!.data[index].video);
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: ((context) => RoomDetail(
                            lang: widget.lang,
                            urlPhoto: widget.photoUrl[0].thumbImg,
                            apartId: widget.photoUrl[index].id,
                            ytVideo:
                                "https://www.youtube.com/watch?v=6SZuFi9htLA",
                          ))));
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
                  image: NetworkImage(widget.photoUrl[index].thumbImg),
                ),
              ),
            ),
          );
        }),
        itemCount: widget.photoUrl.length,
      ),
    );
  }
}

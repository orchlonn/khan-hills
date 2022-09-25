import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:khan_hills/block_detail/model/aparts_with_query.dart';

import 'package:khan_hills/room_detail/view/room_detail.dart';
import 'package:khan_hills/utils/colors.dart';
import 'package:provider/provider.dart';

import '../../providers/main_provider.dart';

class QueryRoom extends StatefulWidget {
  String lang;
  // List<RoomQueryData> aparts;
  final List<Apart> photoUrl;
  QueryRoom({
    Key? key,
    required this.lang,
    required this.photoUrl,
    // required this.aparts,
  }) : super(key: key);

  @override
  State<QueryRoom> createState() => _QueryRoomState();
}

class _QueryRoomState extends State<QueryRoom> {
  @override
  void initState() {
    super.initState();
  }

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
              final data = Provider.of<MainProvider>(context, listen: false);
              data.fetchApartDetail(
                  context, widget.lang, widget.photoUrl[index].id);
              log(data.getApartDetail!.data[0].video);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: ((context) => RoomDetail(
                        lang: widget.lang,
                        urlPhoto: widget.photoUrl[index].thumbImg,
                        apartId: widget.photoUrl[index].id,
                        ytVideo: data.getApartDetail!.data[0].video,
                      )),
                ),
              );
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

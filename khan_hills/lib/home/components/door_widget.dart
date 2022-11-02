import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class DoorWidget extends StatefulWidget {
  String url, lang;

  DoorWidget({
    super.key,
    required this.url,
    required this.lang,
  });

  @override
  State<DoorWidget> createState() => _DoorWidgetState();
}

class _DoorWidgetState extends State<DoorWidget> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return InkWell(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(width: 1, color: Colors.white)),
        child:
            CachedNetworkImage(imageUrl: widget.url, width: size.width * .075),
      ),
    );
  }
}

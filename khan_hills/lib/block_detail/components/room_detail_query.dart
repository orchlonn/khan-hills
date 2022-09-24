import 'package:flutter/material.dart';
import 'package:khan_hills/block_detail/components/query_room.dart';
import 'package:khan_hills/block_detail/provider/block_detail_provider.dart';
import 'package:khan_hills/utils/custom_styles.dart';
import 'package:provider/provider.dart';

class RoomDetailQuery extends StatefulWidget {
  String lang;
  int modelId;
  RoomDetailQuery({
    Key? key,
    required this.lang,
    required this.modelId,
  }) : super(key: key);

  @override
  State<RoomDetailQuery> createState() => _RoomDetailQueryState();
}

class _RoomDetailQueryState extends State<RoomDetailQuery> {
  @override
  void initState() {
    super.initState();
    final data = Provider.of<BlockDetailProvider>(context, listen: false);
    data.fetchRoomWIthQuery(context, widget.lang, widget.modelId);
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Consumer<BlockDetailProvider>(builder: ((context, value, child) {
      var getRoomsWithQuery = value.getRoomsWithQuery!.data;
      return Expanded(
        child: ListView.builder(
          itemBuilder: ((context, index) {
            return Column(
              children: [
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      getRoomsWithQuery[index].name,
                      style: CustomStyles.textSmallmSemiBold(context),
                    )),
                SizedBox(height: size.height * .01),
                QueryRoom(
                  photoUrl: getRoomsWithQuery[index].aparts,
                  lang: widget.lang,
                  aparts: getRoomsWithQuery,
                ),
                SizedBox(height: size.height * .02),
              ],
            );
          }),
          itemCount: getRoomsWithQuery.length,
        ),
      );
    }));
  }
}

import 'package:flutter/material.dart';
import 'package:khan_hills/block_detail/model/aparts_with_query.dart';
import 'package:khan_hills/block_detail/model/get_model_list.dart';
import 'package:khan_hills/networking/dio_client.dart';

class BlockDetailProvider extends ChangeNotifier {
  ModelList? getModelList;
  Future<void> fetchModelList(context, String lang) async {
    getModelList = await DioClient().getModelList(lang);
    notifyListeners();
  }

  ModelList? getFloorList;
  Future<void> fetchFloorList(context, String lang) async {
    getFloorList = await DioClient().getFloorList(lang);
    notifyListeners();
  }

  ModelList? getRoomSize;
  Future<void> fetchRoomSize(context, String lang) async {
    getRoomSize = await DioClient().getRoomSize(lang);
    notifyListeners();
  }

  RoomsWithQuery? getRoomsWithQuery;
  Future<void> fetchRoomWIthQuery(context, String lang, int modelId) async {
    getRoomsWithQuery = await DioClient().getRoomsWithQuery(lang, modelId);
    notifyListeners();
  }
}

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:khan_hills/block_detail/model/aparts_with_query.dart';
import 'package:khan_hills/block_detail/model/get_model_list.dart';
import 'package:khan_hills/networking/dio_client.dart';

class BlockDetailProvider extends ChangeNotifier {
  ModelList? getModelList;
  bool isLoading = false;
  Future<void> fetchModelList(context, String lang) async {
    isLoading = true;
    try {
      getModelList = await DioClient().getModelList(lang);
    } catch (e, stackTrace) {
      log("errr: $e", stackTrace: stackTrace);
    } finally {
      isLoading = false;
    }
    notifyListeners();
  }

  ModelList? getFloorList;
  Future<void> fetchFloorList(context, String lang) async {
    isLoading = true;
    try {
      getFloorList = await DioClient().getFloorList(lang);
    } catch (e, stackTrace) {
      log("errr: $e", stackTrace: stackTrace);
    } finally {
      isLoading = false;
    }
    notifyListeners();
  }

  ModelList? getRoomSize;
  Future<void> fetchRoomSize(context, String lang) async {
    isLoading = true;
    try {
      getRoomSize = await DioClient().getRoomSize(lang);
    } catch (e, stackTrace) {
      log("errr: $e", stackTrace: stackTrace);
    } finally {
      isLoading = false;
    }
    notifyListeners();
  }

  RoomsWithQuery? getRoomsWithQuery;
  Future<void> fetchRoomWIthQuery(
      context, String lang, int model, int floor, int size, int blockId) async {
    isLoading = true;
    try {
      getRoomsWithQuery = await DioClient()
          .getRoomsWithQuery(lang, model, floor, size, blockId);
    } catch (e, stackTrace) {
      log("errr: $e", stackTrace: stackTrace);
    } finally {
      isLoading = false;
    }
    notifyListeners();
  }
}

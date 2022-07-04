import 'package:flutter/material.dart';
import 'package:khan_hills/block_detail/model/get_model_list.dart';
import 'package:khan_hills/networking/dio_client.dart';

class BlockDetailProvider extends ChangeNotifier {
  ModelList? getModelList;
  Future<void> fetchModelList(context) async {
    getModelList = await DioClient().getModelList();
    notifyListeners();
  }
}

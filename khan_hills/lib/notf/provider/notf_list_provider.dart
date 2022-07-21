import 'package:flutter/material.dart';
import 'package:khan_hills/networking/dio_client.dart';
import 'package:khan_hills/notf/model/notf_list_model.dart';

class NotfDetail extends ChangeNotifier {
  NotificationList? getNotifList;
  Future<void> fetchNotifList(context, String lang) async {
    getNotifList = await DioClient().getNotfList(lang);
    notifyListeners();
  }
}

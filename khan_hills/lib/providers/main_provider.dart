import 'package:flutter/material.dart';
import 'package:khan_hills/block_detail/model/apart_detail_model.dart';
import 'package:khan_hills/models/get_banner_list.dart';
import 'package:khan_hills/models/get_brands.dart';
import 'package:khan_hills/models/get_history.dart';
import 'package:khan_hills/models/get_information.dart';
import 'package:khan_hills/models/get_room_with_apart.dart';
import 'package:khan_hills/networking/dio_client.dart';

class MainProvider extends ChangeNotifier {
  GetBannerList? getBannerList;
  Future<void> fetchBannerList(context, String lang) async {
    getBannerList = await DioClient().getBannerLists(lang);
    notifyListeners();
  }

  BrandList? getBrandList;
  Future<void> fetchBrandList(context, String lang) async {
    getBrandList = await DioClient().getBrandsList(lang);
    notifyListeners();
  }

  RoomNumbersWithApartList? getRooms;
  Future<void> fetchRooms(context, String lang) async {
    getRooms = await DioClient().getRoomList(lang);
    notifyListeners();
  }

  InformationModel? getInfo;
  Future<void> getInformation(context, String lang) async {
    getInfo = await DioClient().getInformation(lang);
    notifyListeners();
  }

  HistoryModel? getHistory;
  Future<void> fetchHistory(context, String lang) async {
    getHistory = await DioClient().getHistoryData(lang);
    notifyListeners();
  }

  ApartDetailModel? getApartDetail;
  Future<void> fetchApartDetail(context, String lang, apartId) async {
    getApartDetail = await DioClient().getApartDetail(lang, apartId);
    notifyListeners();
  }
}

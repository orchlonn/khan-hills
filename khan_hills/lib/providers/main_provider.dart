import 'package:flutter/material.dart';
import 'package:khan_hills/models/get_banner_list.dart';
import 'package:khan_hills/models/get_brands.dart';
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
}

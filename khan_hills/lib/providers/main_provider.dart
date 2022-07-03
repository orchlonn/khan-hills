import 'package:flutter/material.dart';
import 'package:khan_hills/models/get_banner_list.dart';
import 'package:khan_hills/models/get_brands.dart';
import 'package:khan_hills/models/get_room_with_apart.dart';
import 'package:khan_hills/networking/dio_client.dart';

class MainProvider extends ChangeNotifier {
  GetBannerList? getBannerList;
  Future<void> fetchBannerList(context) async {
    getBannerList = await DioClient().getBannerLists();
    notifyListeners();
  }

  BrandList? getBrandList;
  Future<void> fetchBrandList(context) async {
    getBrandList = await DioClient().getBrandsList();
    notifyListeners();
  }

  RoomNumbersWithApartList? getRooms;
  Future<void> fetchRooms(context) async {
    getRooms = await DioClient().getRoomList();
    notifyListeners();
  }
}

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:khan_hills/block_detail/model/apart_detail_model.dart';
import 'package:khan_hills/models/get_banner_list.dart';
import 'package:khan_hills/models/get_brand_details.dart';
import 'package:khan_hills/models/get_brands.dart';
import 'package:khan_hills/models/get_history.dart';
import 'package:khan_hills/models/get_information.dart';
import 'package:khan_hills/models/get_room_with_apart.dart';
import 'package:khan_hills/networking/dio_client.dart';

class MainProvider extends ChangeNotifier {
  GetBannerList? getBannerList;
  bool isLoading = false;
  Future<void> fetchBannerList(context, String lang) async {
    isLoading = true;
    try {
      getBannerList = await DioClient().getBannerLists(lang);
    } catch (e, stackTrace) {
      log("errr: $e", stackTrace: stackTrace);
    } finally {
      isLoading = false;
    }
    notifyListeners();
  }

  BrandList? getBrandList;
  Future<void> fetchBrandList(context, String lang) async {
    isLoading = true;
    try {
      getBrandList = await DioClient().getBrandsList(lang);
    } catch (e, stackTrace) {
      log("errr: $e", stackTrace: stackTrace);
    } finally {
      isLoading = false;
    }
    notifyListeners();
  }

  RoomNumbersWithApartList? getRooms;
  Future<void> fetchRooms(context, String lang) async {
    isLoading = true;
    try {
      getRooms = await DioClient().getRoomList(lang);
    } catch (e, stackTrace) {
      log("errr: $e", stackTrace: stackTrace);
    } finally {
      isLoading = false;
    }
    notifyListeners();
  }

  InformationModel? getInfo;
  Future<void> getInformation(context, String lang) async {
    isLoading = true;
    try {
      getInfo = await DioClient().getInformation(lang);
    } catch (e, stackTrace) {
      log("errr: $e", stackTrace: stackTrace);
    } finally {
      isLoading = false;
    }
    notifyListeners();
  }

  HistoryModel? getHistory;
  Future<void> fetchHistory(context, String lang) async {
    isLoading = true;
    try {
      getHistory = await DioClient().getHistoryData(lang);
    } catch (e, stackTrace) {
      log("errr: $e", stackTrace: stackTrace);
    } finally {
      isLoading = false;
    }
    notifyListeners();
  }

  ApartDetailModel? getApartDetail;
  Future<void> fetchApartDetail(context, String lang, apartId) async {
    isLoading = true;
    try {
      getApartDetail = await DioClient().getApartDetail(lang, apartId);
    } catch (e, stackTrace) {
      log("errr: $e", stackTrace: stackTrace);
    } finally {
      isLoading = false;
    }
    notifyListeners();
  }

  BrandDetails? getBrandDetails;
  Future<void> fetchBrandDetails(context, String lang, id) async {
    isLoading = true;
    try {
      getBrandDetails = await DioClient().getBrandDetails(lang, id);
    } catch (e, stackTrace) {
      log("errr: $e", stackTrace: stackTrace);
    } finally {
      isLoading = false;
    }
    notifyListeners();
  }
}

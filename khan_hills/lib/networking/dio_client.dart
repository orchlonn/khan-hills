import 'package:dio/dio.dart';
import 'package:khan_hills/block_detail/model/get_model_list.dart';
import 'package:khan_hills/models/get_banner_list.dart';
import 'package:khan_hills/models/get_brands.dart';
import 'package:khan_hills/models/get_room_with_apart.dart';
import 'package:khan_hills/networking/dio_interceptor.dart';
import 'package:khan_hills/utils/constans.dart';

class DioClient {
  final Dio _dio = Dio(
    BaseOptions(
      baseUrl: Constant.BASE_URL + Constant.sub_url,
      connectTimeout: 5000,
      receiveTimeout: 3000,
    ),
  )..interceptors.add(Logging());

  Future<GetBannerList?> getBannerLists(String lang) async {
    GetBannerList? getBannerList;
    try {
      Response bannerData = await _dio.get("${lang}/notifications?isBanner=1");
      getBannerList = GetBannerList.fromJson(bannerData.data);
    } on DioError catch (e) {
      if (e.response != null) {
        print('Dio error!');
        print('STATUS: ${e.response?.statusCode}');
        print('DATA: ${e.response?.data}');
        print('HEADERS: ${e.response?.headers}');
      } else {
        print('Error sending request!');
        print(e.message);
      }
    }
    return getBannerList;
  }

  Future<BrandList?> getBrandsList(String lang) async {
    BrandList? brandList;
    try {
      Response brandData = await _dio.get("${lang}/brand");
      brandList = BrandList.fromJson(brandData.data);
    } on DioError catch (e) {
      if (e.response != null) {
        print('Dio error!');
        print('STATUS: ${e.response?.statusCode}');
        print('DATA: ${e.response?.data}');
        print('HEADERS: ${e.response?.headers}');
      } else {
        print('Error sending request!');
        print(e.message);
      }
    }
    return brandList;
  }

  Future<RoomNumbersWithApartList?> getRoomList(String lang) async {
    RoomNumbersWithApartList? roomNumbers;
    try {
      Response roomData = await _dio.get("${lang}/rooms-aparts?type=app");
      roomNumbers = RoomNumbersWithApartList.fromJson(roomData.data);
    } on DioError catch (e) {
      if (e.response != null) {
        print('Dio error!');
        print('STATUS: ${e.response?.statusCode}');
        print('DATA: ${e.response?.data}');
        print('HEADERS: ${e.response?.headers}');
      } else {
        print('Error sending request!');
        print(e.message);
      }
    }
    return roomNumbers;
  }

  Future<ModelList?> getModelList(String lang) async {
    ModelList? modelList;
    try {
      Response modelData = await _dio.get("${lang}/model");
      modelList = ModelList.fromJson(modelData.data);
    } on DioError catch (e) {
      if (e.response != null) {
        print('Dio error!');
        print('STATUS: ${e.response?.statusCode}');
        print('DATA: ${e.response?.data}');
        print('HEADERS: ${e.response?.headers}');
      } else {
        print('Error sending request!');
        print(e.message);
      }
    }
    return modelList;
  }

  Future<ModelList?> getFloorList(String lang) async {
    ModelList? floorList;
    try {
      Response floorData = await _dio.get("${lang}/floor");
      floorList = ModelList.fromJson(floorData.data);
    } on DioError catch (e) {
      if (e.response != null) {
        print('Dio error!');
        print('STATUS: ${e.response?.statusCode}');
        print('DATA: ${e.response?.data}');
        print('HEADERS: ${e.response?.headers}');
      } else {
        print('Error sending request!');
        print(e.message);
      }
    }
    return floorList;
  }

  Future<ModelList?> getRoomSize(String lang) async {
    ModelList? sizeList;
    try {
      Response sizeData = await _dio.get("${lang}/size");
      sizeList = ModelList.fromJson(sizeData.data);
    } on DioError catch (e) {
      if (e.response != null) {
        print('Dio error!');
        print('STATUS: ${e.response?.statusCode}');
        print('DATA: ${e.response?.data}');
        print('HEADERS: ${e.response?.headers}');
      } else {
        print('Error sending request!');
        print(e.message);
      }
    }
    return sizeList;
  }
}

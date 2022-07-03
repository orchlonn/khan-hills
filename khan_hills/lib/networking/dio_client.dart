import 'package:dio/dio.dart';
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

  Future<GetBannerList?> getBannerLists() async {
    GetBannerList? getBannerList;
    try {
      Response bannerData = await _dio.get("mn/notifications?isBanner=1");
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

  Future<BrandList?> getBrandsList() async {
    BrandList? brandList;
    try {
      Response brandData = await _dio.get("mn/brand");
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

  Future<RoomNumbersWithApartList?> getRoomList() async {
    RoomNumbersWithApartList? roomNumbers;
    try {
      Response roomData = await _dio.get("mn/rooms-aparts?type=app");
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
}

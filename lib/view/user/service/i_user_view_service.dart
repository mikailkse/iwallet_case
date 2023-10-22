import 'package:dio/dio.dart';
import 'package:iwallet_case/core/utils/enum/network_error.dart';
import 'package:iwallet_case/view/user/model/response/user_list_response_model.dart';
import 'package:iwallet_case/view/user/model/response/user_photo_list_response_model.dart';

abstract class IUserService {
  final Dio dio;

  IUserService({required this.dio});

  Future<(List<UserListResponseModel>?, NetworkError?)> fetchUserList();
  Future<(UserPhotoListResponseModel?, NetworkError?)> fetchUserPhotoList(
      {required int id});
}

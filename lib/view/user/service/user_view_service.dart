import 'dart:io';

import 'package:iwallet_case/core/utils/enum/network_enum.dart';
import 'package:iwallet_case/core/utils/enum/network_error.dart';
import 'package:iwallet_case/view/user/model/response/user_list_response_model.dart';
import 'package:iwallet_case/view/user/model/response/user_photo_list_response_model.dart';
import 'package:iwallet_case/view/user/service/i_user_view_service.dart';

class UserService extends IUserService {
  UserService({required super.dio});

  @override
  Future<(List<UserListResponseModel>?, NetworkError?)> fetchUserList() async {
    try {
      final response = await dio.get(NetworkRoutes.users.withBaseUrl());

      if (response.statusCode != HttpStatus.ok) {
        return (null, NetworkError.server);
      }

      final data = response.data;

      if (data is List) {
        return (
          data.map((e) => UserListResponseModel.fromJson(e)).toList(),
          null,
        );
      }
      return (null, NetworkError.unknown);
    } catch (e) {
      throw (null, NetworkError.unknown);
    }
  }

  @override
  Future<(UserPhotoListResponseModel?, NetworkError?)> fetchUserPhotoList(
      {required int id}) async {
    try {
      final response = await dio.get(
        "${NetworkRoutes.photo.withPhotoUrl()}$id/info",
      );
      if (response.statusCode != HttpStatus.ok) {
        return (null, NetworkError.server);
      }

      final data = response.data;

      if (data is Map<String, dynamic>) {
        return (UserPhotoListResponseModel.fromJson(data), null);
      }
      return (null, NetworkError.unknown);
    } catch (e) {
      throw (null, NetworkError.unknown);
    }
  }
}

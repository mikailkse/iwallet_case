import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:iwallet_case/core/utils/enum/network_enum.dart';
import 'package:iwallet_case/view/user/service/user_view_service.dart';

void main() {
  UserService? userService;
  late Dio dio = Dio(
    BaseOptions(baseUrl: NetworkRoutes.baseURL.route),
  );
  setUp(
    () async {
      userService = UserService(
        dio: dio,
      );
    },
  );

  test('User List Service', () async {
    final response = await userService?.fetchUserList();
    expect(response, isNotNull);
  });
}

import 'package:iwallet_case/core/utils/constants/app_constants.dart';

enum NetworkRoutes {
  baseURL(AppConstants.baseUrl),
  photoUrl(AppConstants.photoUrl),
  users("users"),
  photo("id/");

  final String route;

  const NetworkRoutes(this.route);

  String withBaseUrl() => baseURL.route + route;
  String withPhotoUrl() => photoUrl.route + route;

  String withUsers() => users.route;
}

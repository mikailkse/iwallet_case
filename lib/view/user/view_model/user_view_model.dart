import 'package:flutter/foundation.dart';
import 'package:iwallet_case/core/helper/debouncer.dart';
import 'package:iwallet_case/view/user/model/response/user_list_response_model.dart';
import 'package:iwallet_case/view/user/model/response/user_photo_list_response_model.dart';
import 'package:iwallet_case/view/user/service/user_view_service.dart';

final class UserViewModel extends ChangeNotifier with _UserViewModelMixin {
  UserViewModel({required this.userService});

  final UserService userService;

  void initViewModel() {
    fetchUserList();
  }

  void runFilter(String value) {
    if (value.isEmpty) {
      fetchUserList();
    } else {
      _debouncer.run(() {
        userListResponseModel = userListResponseModel
            .where((element) =>
                element.name
                    ?.toLowerCase()
                    .contains(value.trim().toLowerCase()) ??
                false)
            .toList();
      });
    }
    notifyListeners();
  }

  Future<void> fetchUserList() async {
    _changeIsUserListLoading();
    final (response, status) = await userService.fetchUserList();
    if (status != null) {
      if (kDebugMode) print(status.message);
    }
    if (response != null) {
      userListResponseModel = response;
    }
    _changeIsUserListLoading();
  }

  Future<void> fetchPhotoUserList({required int id}) async {
    final (response, status) = await userService.fetchUserPhotoList(id: id);

    if (status != null) {
      if (kDebugMode) print(status.message);
    }
    if (response != null) {
      userPhotoListResponseModel = response;
    }

    notifyListeners();
  }

  void _changeIsUserListLoading() {
    _isLoading != _isLoading;
    notifyListeners();
  }
}

mixin _UserViewModelMixin {
  final bool _isLoading = false;
  bool get isLoading => _isLoading;

  final _debouncer = Debouncer(milliseconds: 500);

  String searchController = "";

  List<UserListResponseModel> userListResponseModel = [];
  UserPhotoListResponseModel userPhotoListResponseModel =
      UserPhotoListResponseModel();
}

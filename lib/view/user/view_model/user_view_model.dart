import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:iwallet_case/core/helper/debouncer.dart';
import 'package:iwallet_case/view/user/model/response/user_list_response_model.dart';
import 'package:iwallet_case/view/user/model/response/user_photo_list_response_model.dart';
import 'package:iwallet_case/view/user/service/user_view_service.dart';

final class UserViewModel extends ChangeNotifier with _UserViewModelMixin {
  UserViewModel({required this.userService});

  final UserService userService;

  Future<void> initViewModel() async {
    await fetchUserList();
    await addPhotoUser();
  }

  Future<void> addPhotoUser() async {
    for (var element in userListResponseModel) {
      element.info = (await fetchPhotoUserList(id: element.id!));
    }
    notifyListeners();
  }

  void runFilter() async {
    final value = searchController.text.trim().toLowerCase();
    if (value.isEmpty) {
      userListResponseModel.clear();
      await initViewModel();
    } else {
      _debouncer.run(() {
        userListResponseModel = userListResponseModel
            .where((element) =>
                element.name?.toLowerCase().contains(value) ?? false)
            .toList();
      });
    }
    notifyListeners();
  }

  cancelButton() {
    searchController.clear();
    searchController.text.isEmpty
        ? initViewModel()
        : userListResponseModel.clear();
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

  Future<UserPhotoListResponseModel?> fetchPhotoUserList(
      {required int id}) async {
    final (response, status) = await userService.fetchUserPhotoList(id: id);

    if (status != null) {
      if (kDebugMode) print(status.message);
      return null;
    }

    return response;
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

  TextEditingController searchController = TextEditingController();

  List<UserListResponseModel> userListResponseModel = [];
}

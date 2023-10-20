import 'package:flutter/material.dart';

final class UserViewModel extends ChangeNotifier with _UserViewModelMixin {}

mixin _UserViewModelMixin {
  final bool _isLoading = false;
  bool get isLoading => _isLoading;
}

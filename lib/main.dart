import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:iwallet_case/app.dart';
import 'package:iwallet_case/view/user/service/user_view_service.dart';
import 'package:iwallet_case/view/user/view_model/user_view_model.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => UserViewModel(
            userService: UserService(dio: Dio()),
          ),
        ),
      ],
      child: const App(),
    ),
  );
}

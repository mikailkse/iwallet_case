import 'package:flutter/material.dart';
import 'package:iwallet_case/app.dart';
import 'package:iwallet_case/view/user/view_model/user_view_model.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => UserViewModel(),
        ),
      ],
      child: const App(),
    ),
  );
}

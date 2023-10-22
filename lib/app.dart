import 'package:flutter/material.dart';
import 'package:iwallet_case/core/utils/constants/app_constants.dart';
import 'package:iwallet_case/core/utils/theme/iwallet_theme.dart';
import 'package:iwallet_case/view/user/view/user_view.dart';

final class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scrollBehavior: const ScrollBehavior()
          .copyWith(physics: const BouncingScrollPhysics()),
      title: AppConstants.title,
      theme: IWalletTheme().iWalletTheme,
      debugShowCheckedModeBanner: false,
      home: const UserView(),
    );
  }
}

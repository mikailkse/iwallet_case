import 'package:flutter/material.dart';
import 'package:iwallet_case/view/user/widget/user_list_card.dart';
import 'package:iwallet_case/core/extension/common_extension.dart';

final class UserView extends StatelessWidget {
  const UserView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("iWallet"),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              shrinkWrap: true,
              itemCount: 20,
              scrollDirection: Axis.vertical,
              padding: context.paddingLow,
              itemBuilder: (context, index) => const UserListCard(),
            ),
          ),
        ],
      ),
    );
  }
}

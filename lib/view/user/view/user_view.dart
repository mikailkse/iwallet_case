import 'package:flutter/material.dart';
import 'package:iwallet_case/core/extension/range_extension.dart';
import 'package:iwallet_case/view/user/widget/user_list_card.dart';
import 'package:iwallet_case/core/extension/common_extension.dart';

final class UserView extends StatefulWidget {
  const UserView({super.key});

  @override
  State<UserView> createState() => _UserViewState();
}

class _UserViewState extends State<UserView> {
  late final ScrollController controller;
  bool isSearchbarVisible = false;

  @override
  void initState() {
    controller = ScrollController()..addListener(_showSearchBar);
    super.initState();
  }

  void _showSearchBar() {
    isSearchbarVisible = controller.offset.isBetween(-200, 100) ? true : false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("iWallet"),
      ),
      body: Column(
        children: [
          AnimatedContainer(
            height: isSearchbarVisible ? 50 : 0,
            duration: const Duration(milliseconds: 400),
            padding: const EdgeInsets.all(8),
            child: SearchBar(
              elevation: MaterialStateProperty.all(0),
              onChanged: (value) {},
            ),
          ),
          Expanded(
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              shrinkWrap: true,
              itemCount: 20,
              controller: controller,
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

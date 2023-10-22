import 'package:flutter/material.dart';
import 'package:iwallet_case/core/extension/range_extension.dart';
import 'package:iwallet_case/view/user/view_model/user_view_model.dart';
import 'package:iwallet_case/view/user/widget/user_list_card.dart';
import 'package:iwallet_case/core/extension/common_extension.dart';
import 'package:provider/provider.dart';

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
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<UserViewModel>().initViewModel();
    });
    controller = ScrollController()..addListener(_showSearchBar);
  }

  void _showSearchBar() {
    isSearchbarVisible = controller.offset.isBetween(-170, 100) ? true : false;
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
            padding: context.paddingLow,
            child: SearchBar(
              elevation: MaterialStateProperty.all(0),
              onChanged: (value) {},
            ),
          ),
          Expanded(
            child: Consumer<UserViewModel>(
              builder: (context, viewModel, child) =>
                  viewModel.isLoading == true
                      ? const Center(child: CircularProgressIndicator())
                      : ListView.builder(
                          shrinkWrap: true,
                          itemCount: viewModel.userListResponseModel.length,
                          controller: controller,
                          scrollDirection: Axis.vertical,
                          padding: context.paddingLow,
                          itemBuilder: (context, index) {
                            return UserListCard(
                              userViewModel: viewModel,
                              index: index,
                            );
                          },
                        ),
            ),
          ),
        ],
      ),
    );
  }
}

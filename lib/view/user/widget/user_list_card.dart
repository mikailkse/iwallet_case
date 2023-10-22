import 'package:flutter/material.dart';
import 'package:iwallet_case/core/components/alert_dialog/iwallet_alert_dialog.dart';
import 'package:iwallet_case/core/components/circle_avatar/image_circle_avatar.dart';
import 'package:iwallet_case/core/components/container/white_shadow_container.dart';
import 'package:iwallet_case/core/extension/common_extension.dart';
import 'package:iwallet_case/core/utils/constants/ui_color_constants.dart';
import 'package:iwallet_case/view/user/view_model/user_view_model.dart';

part '../widget/user_list_pop_up_info_text.dart';

final class UserListCard extends StatelessWidget {
  const UserListCard({
    super.key,
    required this.userViewModel,
    required this.index,
  });

  final UserViewModel userViewModel;
  final int index;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => IWalletAlertDialog(
        content: Wrap(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                NetworkImageCircleAvatar(
                  networkUrl: userViewModel
                          .userListResponseModel[index].info?.downloadUrl ??
                      '',
                ),
                SizedBox(height: context.dynamicHeight(0.02)),
                Text(
                  userViewModel.userListResponseModel[index].name ?? '',
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                        color: Colors.black,
                      ),
                ),
                Text(
                  userViewModel.userListResponseModel[index].username ?? '',
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: UIColor.darkGrey,
                      ),
                ),
                _UserListPopUpInfoText(
                  title: 'Email',
                  trailingText:
                      userViewModel.userListResponseModel[index].email ?? '',
                ),
                _UserListPopUpInfoText(
                  title: 'Phone',
                  trailingText:
                      userViewModel.userListResponseModel[index].phone ?? '',
                ),
                _UserListPopUpInfoText(
                  title: 'Adres',
                  trailingText:
                      '${userViewModel.userListResponseModel[index].address?.street} ${userViewModel.userListResponseModel[index].address?.suite}',
                ),
                _UserListPopUpInfoText(
                  title: 'Şehir',
                  trailingText: userViewModel
                          .userListResponseModel[index].address?.city ??
                      '',
                ),
                _UserListPopUpInfoText(
                  title: 'Konum',
                  trailingText:
                      '${userViewModel.userListResponseModel[index].address?.geo?.lat} ${userViewModel.userListResponseModel[index].address?.geo?.lng}',
                ),
              ],
            ),
          ],
        ),
      ).show(context),
      child: WhiteShadowContainer(
        width: context.dynamicWidth(0.9),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                NetworkImageCircleAvatar(
                  networkUrl: userViewModel
                          .userListResponseModel[index].info?.downloadUrl ??
                      '',
                ),
                SizedBox(width: context.dynamicWidth(0.05)),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      userViewModel.userListResponseModel[index].name ?? '',
                      overflow: TextOverflow.ellipsis,
                      style:
                          Theme.of(context).textTheme.headlineSmall!.copyWith(
                                color: Colors.black,
                              ),
                    ),
                    Text(
                      userViewModel.userListResponseModel[index].username ?? '',
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: UIColor.darkGrey,
                          ),
                    ),
                  ],
                ),
              ],
            ),
            const Icon(
              Icons.play_arrow_rounded,
              size: 30,
              color: UIColor.darkGrey,
            )
          ],
        ),
      ),
    );
  }
}

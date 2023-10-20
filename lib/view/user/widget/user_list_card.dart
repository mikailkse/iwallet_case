// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:iwallet_case/core/components/alert_dialog/iwallet_alert_dialog.dart';
import 'package:iwallet_case/core/components/circle_avatar/image_circle_avatar.dart';
import 'package:iwallet_case/core/components/container/white_shadow_container.dart';
import 'package:iwallet_case/core/extension/common_extension.dart';
import 'package:iwallet_case/core/utils/constants/ui_color_constants.dart';

final class UserListCard extends StatelessWidget {
  const UserListCard({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => UserListInfoPopUpCard().show(context),
      child: const _UserListCardBody(),
    );
  }
}

final class UserListInfoPopUpCard extends IWalletAlertDialog {
  UserListInfoPopUpCard({
    super.key,
  }) : super(
          content: Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  NetworkImageCircleAvatar(
                    networkUrl: '',
                  ),
                  const _UserListInfoText(
                    title: 'Email',
                    trailingText: 'Mikail Köse',
                  ),
                  const _UserListInfoText(
                    title: 'Email',
                    trailingText: 'Mikail Köse',
                  ),
                  const _UserListInfoText(
                    title: 'Email',
                    trailingText: 'Mikail Köse',
                  ),
                  const _UserListInfoText(
                    title: 'Email',
                    trailingText: 'Mikail Köse',
                  ),
                ],
              ),
            ],
          ),
        );
}

final class _UserListInfoText extends StatelessWidget {
  final String title;
  final String trailingText;
  const _UserListInfoText(
      {Key? key, required this.title, required this.trailingText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Text(
            title,
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: Colors.black,
                ),
          ),
        ),
        SizedBox(height: context.dynamicHeight(0.05)),
        Expanded(
          child: Text(
            trailingText,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: UIColor.darkGrey,
                ),
          ),
        )
      ],
    );
  }
}

final class _UserListCardBody extends StatelessWidget {
  const _UserListCardBody();

  @override
  Widget build(BuildContext context) {
    return WhiteShadowContainer(
      width: context.dynamicWidth(0.9),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              NetworkImageCircleAvatar(
                networkUrl: '',
              ),
              SizedBox(width: context.dynamicWidth(0.05)),
              const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Name'),
                  Text('Username'),
                ],
              ),
            ],
          ),
          const Icon(Icons.arrow_forward_ios)
        ],
      ),
    );
  }
}

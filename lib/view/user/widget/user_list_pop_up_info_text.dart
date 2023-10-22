part of '../widget/user_list_card.dart';

final class _UserListPopUpInfoText extends StatelessWidget {
  final String title;
  final String trailingText;

  const _UserListPopUpInfoText({
    Key? key,
    required this.title,
    required this.trailingText,
  }) : super(key: key);

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

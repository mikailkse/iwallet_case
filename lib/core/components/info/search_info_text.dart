import 'package:flutter/material.dart';
import 'package:iwallet_case/core/utils/constants/ui_color_constants.dart';

class SearchInfoText extends StatelessWidget {
  const SearchInfoText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          Icons.search,
          color: UIColor.darkGrey,
          size: 50,
        ),
        const SizedBox(height: 10),
        Text(
          'Kullanıcı Bulunamadı',
          style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                color: Colors.black,
              ),
        ),
        const SizedBox(height: 10),
        Text(
          'Başka bir anahtar kelime ile tekrar deneyin.',
          style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                color: UIColor.darkGrey,
              ),
        ),
      ],
    );
  }
}

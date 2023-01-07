import 'package:flutter/material.dart';
import 'package:food_delivery/utils/dimensions.dart';
import 'package:food_delivery/widgets/small_text.dart';

import '../utils/app_colors.dart';
import 'big_text.dart';
import 'icon_and_text_widget.dart';

class AppColumn extends StatelessWidget {
  final String text;
  const AppColumn({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BigText(
          text: text,
          size: Dimensions.font26,
        ),
        SizedBox(
          height: Dimensions.height10,
        ),
        Row(
          children: [
            Wrap(
              children: List.generate(
                  5,
                      (index) => const Icon(
                    Icons.star,
                    color: AppColors.mainColor,
                    size: 16,
                  )),
            ),
            const SizedBox(
              width: 10,
            ),
            SmallText(
              text: 'Likes',
              size: 12,
              color: Colors.black,
            ),
            const SizedBox(
              width: 10,
            ),
            SmallText(
              text: 'Comments',
              size: 12,
              color: Colors.black,
            ),
          ],
        ),
        SizedBox(
          height: Dimensions.height10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            IconAndTextWidget(
                icon: Icons.circle,
                text: 'Normal',
                color: AppColors.paraColor,
                iconColor: AppColors.iconColor1),
            IconAndTextWidget(
                icon: Icons.location_on,
                text: '1.7km',
                color: AppColors.paraColor,
                iconColor: AppColors.iconColor2),
            IconAndTextWidget(
                icon: Icons.access_time_rounded,
                text: '32min',
                color: AppColors.paraColor,
                iconColor: Colors.red),
          ],
        )
      ],
    );
  }
}

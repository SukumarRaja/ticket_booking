import 'package:flutter/material.dart';
import '../themes/colors.dart';
import '../themes/styles.dart';

class AppDoubleTextWidget extends StatelessWidget {
  const AppDoubleTextWidget(
      {super.key, required this.bigText, required this.smallText});

  final String bigText;
  final String smallText;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          bigText,
          style: TextStyles.heaLineStyle2,
        ),
        InkWell(
          onTap: () {},
          child: Text(
            smallText,
            style: TextStyles.textStyle.copyWith(color: AppColors.primary),
          ),
        ),
      ],
    );
  }
}

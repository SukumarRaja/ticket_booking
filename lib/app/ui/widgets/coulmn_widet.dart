import 'package:flutter/material.dart';
import '../themes/styles.dart';

class AppColumnLayout extends StatelessWidget {
  const AppColumnLayout(
      {super.key,
      required this.firstText,
      required this.secondText,
      required this.alignment});

  final String firstText;
  final String secondText;
  final CrossAxisAlignment alignment;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        Text(
          firstText,
          style: TextStyles.heaLineStyle3.copyWith(color: Colors.black),
        ),
        Text(
          secondText,
          style: TextStyles.heaLineStyle4.copyWith(color: Colors.grey.shade400),
        ),
      ],
    );
  }
}

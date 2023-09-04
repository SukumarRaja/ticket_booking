import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../themes/styles.dart';
import 'app_layout.dart';

class AppIconText extends StatelessWidget {
  const AppIconText({super.key, required this.text, required this.icon});

  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: AppLayout.getHeight(context, 12),
          vertical: AppLayout.getWidth(context, 12)),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppLayout.getWidth(context, 10)),
          color: Colors.white),
      child: Row(
        children: [
          Icon(
            icon,
            color: const Color(0xFFBFC2DF),
          ),
          Gap(AppLayout.getWidth(context, 10)),
          Text(
            text,
            style: TextStyles.textStyle,
          )
        ],
      ),
    );
  }
}

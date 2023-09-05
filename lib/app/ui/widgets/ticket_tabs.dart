import 'package:flutter/material.dart';
import 'app_layout.dart';

class AppTicketTabs extends StatelessWidget {
  const AppTicketTabs(
      {super.key, required this.firstTap, required this.secondTap});

  final String firstTap;
  final String secondTap;

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return FittedBox(
      child: Container(
        padding: const EdgeInsets.all(3.5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppLayout.getHeight(context, 50)),
          color: const Color(0xFFF4F6FD),
        ),
        child: Row(
          children: [
            //airlines
            Container(
              alignment: Alignment.center,
              width: size.width * .44,
              padding: EdgeInsets.symmetric(
                  vertical: AppLayout.getHeight(context, 7)),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.horizontal(
                      left: Radius.circular(AppLayout.getHeight(context, 50))),
                  color: Colors.white),
              child: Text(firstTap),
            ),

            //hotels
            Container(
              alignment: Alignment.center,
              width: size.width * .44,
              padding: EdgeInsets.symmetric(
                  vertical: AppLayout.getHeight(context, 7)),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.horizontal(
                      right: Radius.circular(AppLayout.getHeight(context, 50))),
                  color: Colors.transparent),
              child: Text(secondTap),
            ),
          ],
        ),
      ),
    );
  }
}

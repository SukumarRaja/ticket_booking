import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../themes/colors.dart';
import '../themes/styles.dart';
import 'app_layout.dart';

class HotelCard extends StatelessWidget {
  const HotelCard(
      {super.key,
      required this.image,
      required this.name,
      required this.place,
      required this.price});

  final String image;
  final String name;
  final String place;
  final String price;

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      width: size.width * 0.6,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 17),
      margin: const EdgeInsets.only(top: 5, right: 17),
      decoration: BoxDecoration(
          color: AppColors.primary,
          borderRadius: BorderRadius.circular(24),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.shade200, blurRadius: 20, spreadRadius: 5)
          ]),
      height: 350,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: AppLayout.getHeight(context, 180),
            decoration: BoxDecoration(
                color: AppColors.primary,
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/$image"))),
          ),
          const Gap(10),
          Text(
            name,
            style: TextStyles.heaLineStyle2.copyWith(color: AppColors.brown),
          ),
          const Gap(5),
          Text(
            place,
            style: TextStyles.heaLineStyle3.copyWith(color: Colors.white),
          ),
          const Gap(8),
          Text(
            "\u20B9$price/night",
            style: TextStyles.heaLineStyle1.copyWith(color: AppColors.brown),
          ),
        ],
      ),
    );
  }
}

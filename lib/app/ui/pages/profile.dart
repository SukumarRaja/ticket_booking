import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../themes/colors.dart';
import '../themes/styles.dart';
import '../widgets/app_layout.dart';
import '../widgets/coulmn_widet.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getHeight(context, 20),
            vertical: AppLayout.getHeight(context, 20)),
        children: [
          const Gap(40),
          Row(
            children: [
              Container(
                height: AppLayout.getHeight(context, 86),
                width: AppLayout.getWidth(context, 86),
                decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(AppLayout.getHeight(context, 10)),
                    image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/images/logo.jpg"))),
              ),
              Gap(AppLayout.getWidth(context, 10)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Book Tickets",
                    style: TextStyles.heaLineStyle1,
                  ),
                  Text(
                    "New-York",
                    style: TextStyles.heaLineStyle4.copyWith(
                        fontWeight: FontWeight.w500,
                        color: Colors.grey.shade400),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: AppLayout.getHeight(context, 3),
                        vertical: AppLayout.getHeight(context, 3)),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                            AppLayout.getHeight(context, 100)),
                        color: const Color(0xFFFEFF3)),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(3),
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Color(0xFF526799)),
                          child: const Icon(
                            FluentSystemIcons.ic_fluent_shield_filled,
                            color: Colors.white,
                            size: 15,
                          ),
                        ),
                        Gap(AppLayout.getHeight(context, 5)),
                        Text(
                          "Premium Status",
                          style: TextStyles.heaLineStyle3.copyWith(
                              fontWeight: FontWeight.w600, color: Colors.black),
                        )
                      ],
                    ),
                  )
                ],
              ),
              const Spacer(),
              Column(
                children: [
                  InkWell(
                    onTap: () {},
                    child: Text(
                      "Edit",
                      style: TextStyles.textStyle.copyWith(
                          color: AppColors.primary,
                          fontWeight: FontWeight.w300),
                    ),
                  ),
                ],
              )
            ],
          ),
          Gap(AppLayout.getHeight(context, 8)),
          Divider(
            color: Colors.grey.shade300,
          ),
          Gap(AppLayout.getHeight(context, 8)),
          Stack(
            children: [
              Container(
                height: AppLayout.getHeight(context, 90),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: AppColors.primary,
                    borderRadius: BorderRadius.circular(
                        AppLayout.getHeight(context, 18))),
              ),
              Positioned(
                right: -45,
                top: -40,
                child: Container(
                  padding: EdgeInsets.all(AppLayout.getHeight(context, 30)),
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      shape: BoxShape.circle,
                      border: Border.all(
                          width: 18, color: const Color(0xFF264CD2))),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: AppLayout.getHeight(context, 25),
                    vertical: AppLayout.getHeight(context, 20)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      maxRadius: 25,
                      backgroundColor: Colors.white,
                      child: Icon(
                        FluentSystemIcons.ic_fluent_lightbulb_filament_filled,
                        color: AppColors.primary,
                        size: 27,
                      ),
                    ),
                    Gap(AppLayout.getWidth(context, 12)),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "You've got a new reward",
                          style: TextStyles.heaLineStyle2.copyWith(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                        Text(
                          "You have 92 flights in a year",
                          style: TextStyles.heaLineStyle2.copyWith(
                              fontWeight: FontWeight.w500,
                              color: Colors.white.withOpacity(0.9),
                              fontSize: 16),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
          Gap(AppLayout.getHeight(context, 25)),
          Text(
            "Accumulated Miles",
            style: TextStyles.heaLineStyle2,
          ),
          Container(
            margin: EdgeInsets.symmetric(
                horizontal: AppLayout.getHeight(context, 8)),
            child: Column(
              children: [
                Gap(AppLayout.getHeight(context, 15)),
                Text(
                  "123645",
                  style: TextStyles.heaLineStyle2.copyWith(
                      fontSize: 45,
                      color: AppColors.text,
                      fontWeight: FontWeight.w600),
                ),
                Gap(AppLayout.getHeight(context, 30)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Miles accrued",
                      style: TextStyles.heaLineStyle4.copyWith(fontSize: 16),
                    ),
                    Text(
                      "12 JAN 2023",
                      style: TextStyles.heaLineStyle4.copyWith(fontSize: 16),
                    ),
                  ],
                ),
                Gap(AppLayout.getHeight(context, 25)),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnLayout(
                        firstText: "24035",
                        secondText: "Miles",
                        alignment: CrossAxisAlignment.start),
                    AppColumnLayout(
                        firstText: "Airline CO",
                        secondText: "Received From",
                        alignment: CrossAxisAlignment.end),
                  ],
                ),
                Gap(AppLayout.getHeight(context, 15)),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: LayoutBuilder(
                    builder: (context, constraints) {
                      return Flex(
                        direction: Axis.horizontal,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.max,
                        children: List.generate(
                            (constraints.constrainWidth() / 15).floor(),
                            (index) => SizedBox(
                                  width: 5,
                                  height: 1,
                                  child: DecoratedBox(
                                    decoration: BoxDecoration(
                                        color: Colors.grey.shade400),
                                  ),
                                )),
                      );
                    },
                  ),
                ),
                Gap(AppLayout.getHeight(context, 15)),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnLayout(
                        firstText: "24",
                        secondText: "Miles",
                        alignment: CrossAxisAlignment.start),
                    AppColumnLayout(
                        firstText: "McDonals",
                        secondText: "Received From",
                        alignment: CrossAxisAlignment.end),
                  ],
                ),
                Gap(AppLayout.getHeight(context, 15)),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: LayoutBuilder(
                    builder: (context, constraints) {
                      return Flex(
                        direction: Axis.horizontal,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.max,
                        children: List.generate(
                            (constraints.constrainWidth() / 15).floor(),
                            (index) => SizedBox(
                                  width: 5,
                                  height: 1,
                                  child: DecoratedBox(
                                    decoration: BoxDecoration(
                                        color: Colors.grey.shade400),
                                  ),
                                )),
                      );
                    },
                  ),
                ),
                Gap(AppLayout.getHeight(context, 15)),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnLayout(
                        firstText: "25365",
                        secondText: "Miles",
                        alignment: CrossAxisAlignment.start),
                    AppColumnLayout(
                        firstText: "Emkma",
                        secondText: "Received From",
                        alignment: CrossAxisAlignment.end),
                  ],
                ),
              ],
            ),
          ),
          Gap(AppLayout.getHeight(context, 30)),
          Center(
            child: Text(
              "How to get more miles",
              style: TextStyles.textStyle.copyWith(
                  color: AppColors.primary, fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../themes/colors.dart';
import '../themes/styles.dart';
import '../widgets/app_layout.dart';
import '../widgets/double_text_widget.dart';
import '../widgets/search_with_icon.dart';
import '../widgets/ticket_tabs.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: ListView(
        physics: const BouncingScrollPhysics(),
        padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getWidth(context, 20),
            vertical: AppLayout.getHeight(context, 20)),
        children: [
          Gap(AppLayout.getHeight(context, 40)),
          Text(
            "What are\nyou looking for?",
            style: TextStyles.heaLineStyle1
                .copyWith(fontSize: AppLayout.getWidth(context, 35)),
          ),
          Gap(AppLayout.getHeight(context, 20)),

          //menu buttons
          const AppTicketTabs(
            firstTap: "Airplane Tickets",
            secondTap: "Hotels",
          ),

          Gap(AppLayout.getHeight(context, 25)),

          const AppIconText(
              text: "Departure", icon: Icons.flight_takeoff_rounded),
          Gap(AppLayout.getHeight(context, 15)),

          const AppIconText(text: "Arrival", icon: Icons.flight_land_rounded),

          Gap(AppLayout.getHeight(context, 25)),

          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(
                horizontal: AppLayout.getHeight(context, 15),
                vertical: AppLayout.getWidth(context, 15)),
            decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.circular(AppLayout.getWidth(context, 10)),
                color: const Color(0xD91130CE)),
            child: Text(
              "Find Tickets",
              style: TextStyles.textStyle.copyWith(color: Colors.white),
            ),
          ),
          Gap(AppLayout.getHeight(context, 30)),

          const AppDoubleTextWidget(
              bigText: "Upcoming Flights", smallText: "View all"),
          Gap(AppLayout.getHeight(context, 15)),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: AppLayout.getHeight(context, 400),
                padding: EdgeInsets.symmetric(
                    horizontal: AppLayout.getHeight(context, 12),
                    vertical: AppLayout.getWidth(context, 12)),
                width: size.width * 0.42,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.circular(AppLayout.getHeight(context, 12)),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade200,
                          blurRadius: 1,
                          spreadRadius: 1)
                    ]),
                child: Column(
                  children: [
                    Container(
                      height: AppLayout.getHeight(context, 190),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                              AppLayout.getHeight(context, 12)),
                          image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/images/one.jpg"))),
                    ),
                    Gap(AppLayout.getHeight(context, 12)),
                    Text(
                      "15% discount on the early booking of this flight. Don't miss out chance",
                      style: TextStyles.heaLineStyle2,
                    )
                  ],
                ),
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: size.width * 0.44,
                        height: AppLayout.getHeight(context, 174),
                        padding: EdgeInsets.symmetric(
                            horizontal: AppLayout.getWidth(context, 15),
                            vertical: AppLayout.getHeight(context, 15)),
                        decoration: BoxDecoration(
                            color: const Color(0xFF3AB8B8),
                            borderRadius: BorderRadius.circular(
                                AppLayout.getHeight(context, 18))),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Discount\nfor survey",
                              style: TextStyles.heaLineStyle2.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Gap(AppLayout.getHeight(context, 10)),
                            Text(
                              "Take the survey about our services and get discount",
                              style: TextStyles.heaLineStyle2.copyWith(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                  fontSize: 18),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        right: -45,
                        top: -45,
                        child: Container(
                          padding:
                              EdgeInsets.all(AppLayout.getHeight(context, 30)),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                  width: 18, color: const Color(0xFF189999)),
                              color: Colors.transparent),
                        ),
                      )
                    ],
                  ),
                  Gap(AppLayout.getHeight(context, 15)),
                  Container(
                    width: size.width * 0.44,
                    height: AppLayout.getHeight(context, 210),
                    padding: EdgeInsets.symmetric(
                        vertical: AppLayout.getHeight(context, 15),
                        horizontal: AppLayout.getWidth(context, 15)),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                            AppLayout.getWidth(context, 18)),
                        color: const Color(0xFFEC6545)),
                    child: Column(
                      children: [
                        Text(
                          "Take love",
                          style: TextStyles.heaLineStyle2.copyWith(
                              color: Colors.white, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                        Gap(AppLayout.getHeight(context, 15)),
                        RichText(
                            text: const TextSpan(children: [
                          TextSpan(text: '🙂', style: TextStyle(fontSize: 30)),
                          TextSpan(text: '🙂', style: TextStyle(fontSize: 50)),
                          TextSpan(text: '🙂', style: TextStyle(fontSize: 30)),
                        ]))
                      ],
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

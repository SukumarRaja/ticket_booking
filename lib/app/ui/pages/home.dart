import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../../data/hotel.dart';
import '../../data/ticket.dart';
import '../themes/colors.dart';
import '../themes/styles.dart';
import '../widgets/app_layout.dart';
import '../widgets/double_text_widget.dart';
import '../widgets/hotel_card.dart';
import 'ticket_view.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          //head & search
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const Gap(40),

                //head and logo
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Good Morning",
                          style: TextStyles.heaLineStyle3,
                        ),
                        const Gap(2),
                        Text(
                          "Book Tickets",
                          style: TextStyles.heaLineStyle1,
                        ),
                      ],
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                              fit: BoxFit.fitHeight,
                              image: AssetImage('assets/images/logo.jpg'))),
                    )
                  ],
                ),

                const Gap(25),

                //search
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xFFF4F6FD)),
                  child: Row(
                    children: [
                      const Icon(
                        FluentSystemIcons.ic_fluent_search_regular,
                        color: Color(0xFFBFC205),
                      ),
                      Text(
                        "Search",
                        style: TextStyles.heaLineStyle4,
                      )
                    ],
                  ),
                ),

                const Gap(30),

                // upcoming flights
                const AppDoubleTextWidget(
                    bigText: "Upcoming Flights", smallText: "View all"),
              ],
            ),
          ),

          const Gap(15),

          //tickets
          SizedBox(
            height: AppLayout.getHeight(context, 190),
            child: ListView.builder(
                itemCount: tickets.length,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                padding: const EdgeInsets.only(left: 20),
                itemBuilder: (context, index) {
                  return TicketView(
                    from: "${tickets[index]['from']['name']}",
                    fromShort: "${tickets[index]['from']['code']}",
                    toShort: "${tickets[index]['to']['code']}",
                    to: "${tickets[index]['to']['name']}",
                    hours: "${tickets[index]['flying_time']}",
                    date: "${tickets[index]['date']}",
                    time: "${tickets[index]['departure_time']}",
                    ticketNumber: "${tickets[index]['ticket_number']}",
                  );
                }),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child:
                AppDoubleTextWidget(bigText: "Hotels", smallText: "View all"),
          ),

          const Gap(15),

          SizedBox(
            height: AppLayout.getHeight(context, 350),
            child: ListView.builder(
                itemCount: hotelList.length,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                padding: const EdgeInsets.only(left: 20),
                itemBuilder: (context, index) {
                  return HotelCard(
                    name: "${hotelList[index]['place']}",
                    place: "${hotelList[index]['destination']}",
                    price: "${hotelList[index]['price']}",
                    image: "${hotelList[index]['image']}",
                  );
                }),
          ),
          const Gap(15),
        ],
      ),
    );
  }
}

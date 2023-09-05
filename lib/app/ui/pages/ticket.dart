import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../../data/ticket.dart';
import '../themes/colors.dart';
import '../themes/styles.dart';
import '../widgets/app_layout.dart';
import '../widgets/tickect_details_card.dart';
import '../widgets/ticket_tabs.dart';
import 'ticket_view.dart';

class Ticket extends StatelessWidget {
  const Ticket({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: Stack(
        children: [
          ListView(
            physics: BouncingScrollPhysics(),
            padding: EdgeInsets.symmetric(
                horizontal: AppLayout.getHeight(context, 20),
                vertical: AppLayout.getWidth(context, 20)),
            children: [
              Gap(AppLayout.getHeight(context, 40)),
              Text(
                "Tickets",
                style: TextStyles.heaLineStyle1,
              ),
              Gap(AppLayout.getHeight(context, 20)),
              const AppTicketTabs(
                firstTap: "Upcoming",
                secondTap: "Previous",
              ),
              Gap(AppLayout.getHeight(context, 20)),
              Container(
                  padding:
                      EdgeInsets.only(left: AppLayout.getHeight(context, 15)),
                  child: const TicketDetailsCard(
                    from: "New-York",
                    fromShort: "NYC",
                    to: "London",
                    toShort: "LDN",
                    hours: "8H 30M",
                    date: "5 JAN",
                    time: "02:30 PM",
                    ticketNumber: "SYN0436",
                  )),
              Gap(AppLayout.getHeight(context, 30)),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 0),
                child: TicketView(
                  isCurve: false,
                  from: "${tickets[0]['from']['name']}",
                  fromShort: "${tickets[0]['from']['code']}",
                  toShort: "${tickets[0]['to']['code']}",
                  to: "${tickets[0]['to']['name']}",
                  hours: "${tickets[0]['flying_time']}",
                  date: "${tickets[0]['date']}",
                  time: "${tickets[0]['departure_time']}",
                  ticketNumber: "${tickets[0]['ticket_number']}",
                ),
              )
            ],
          ),
          Positioned(
            left: AppLayout.getHeight(context, 22),
            top: AppLayout.getHeight(context, 295),
            child: Container(
              padding: EdgeInsets.all(3),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: AppColors.text, width: 2)),
              child: CircleAvatar(
                maxRadius: 4,
                backgroundColor: AppColors.text,
              ),
            ),
          ),
          Positioned(
            right: AppLayout.getHeight(context, 22),
            top: AppLayout.getHeight(context, 295),
            child: Container(
              padding: EdgeInsets.all(3),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: AppColors.text, width: 2)),
              child: CircleAvatar(
                maxRadius: 4,
                backgroundColor: AppColors.text,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

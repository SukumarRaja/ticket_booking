import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../themes/colors.dart';
import '../themes/styles.dart';
import '../widgets/app_layout.dart';
import '../widgets/thick_container.dart';
import 'coulmn_widet.dart';

class TicketDetailsCard extends StatelessWidget {
  const TicketDetailsCard(
      {super.key,
      required this.fromShort,
      required this.toShort,
      required this.from,
      required this.to,
      required this.hours,
      required this.date,
      required this.time,
      required this.ticketNumber,
      this.isColor});

  final String fromShort;
  final String toShort;
  final String from;
  final String to;
  final String hours;
  final String date;
  final String time;
  final String ticketNumber;
  final bool? isColor;

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width * 0.85,
      // height: 200,
      child: Container(
        margin: EdgeInsets.only(right: AppLayout.getHeight(context, 16)),
        child: Column(
          children: [
            //show the blue container
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft:
                          Radius.circular(AppLayout.getHeight(context, 21)),
                      topRight:
                          Radius.circular(AppLayout.getHeight(context, 21)))),
              padding: EdgeInsets.all(AppLayout.getHeight(context, 16)),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        fromShort,
                        style: TextStyles.heaLineStyle3
                            .copyWith(color: Colors.grey),
                      ),
                      Expanded(child: Container()),
                      const ThickContainer(isColor: false),
                      Expanded(
                          child: Stack(
                        children: [
                          SizedBox(
                            height: AppLayout.getHeight(context, 24),
                            child: LayoutBuilder(
                              builder: (context, constraints) {
                                return Flex(
                                  direction: Axis.horizontal,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  mainAxisSize: MainAxisSize.max,
                                  children: List.generate(
                                      (constraints.constrainWidth() / 6)
                                          .floor(),
                                      (index) => SizedBox(
                                            width: 3,
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
                          Center(
                            child: Transform.rotate(
                              angle: 1.5,
                              child: Icon(
                                Icons.local_airport_rounded,
                                color: Colors.grey.shade400,
                              ),
                            ),
                          ),
                        ],
                      )),
                      const ThickContainer(isColor: false),
                      Expanded(child: Container()),
                      Text(
                        toShort,
                        style: TextStyles.heaLineStyle3
                            .copyWith(color: Colors.grey),
                      ),
                    ],
                  ),
                  const Gap(3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                          width: AppLayout.getWidth(context, 100),
                          child: Text(
                            from,
                            style: TextStyles.heaLineStyle4
                                .copyWith(color: Colors.grey.shade400),
                          )),
                      Text(
                        hours,
                        style: TextStyles.heaLineStyle4
                            .copyWith(color: Colors.grey.shade400),
                      ),
                      SizedBox(
                          width: AppLayout.getWidth(context, 100),
                          child: Text(
                            to,
                            textAlign: TextAlign.end,
                            style: TextStyles.heaLineStyle4
                                .copyWith(color: Colors.grey.shade400),
                          )),
                    ],
                  )
                ],
              ),
            ),

            //show the orange container

            Container(
              color: Colors.white,
              child: Row(
                children: [
                  SizedBox(
                    height: AppLayout.getHeight(context, 20),
                    width: AppLayout.getWidth(context, 10),
                    child: const DecoratedBox(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10),
                              bottomRight: Radius.circular(10))),
                    ),
                  ),
                  Expanded(
                      child: Padding(
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
                                          color: Colors.grey.shade200),
                                    ),
                                  )),
                        );
                      },
                    ),
                  )),
                  const SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              bottomLeft: Radius.circular(10))),
                    ),
                  ),
                ],
              ),
            ),

            //bottom of the orange container
            Container(
              padding: const EdgeInsets.only(
                  left: 16, right: 16, bottom: 16, top: 10),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(21),
                      bottomRight: Radius.circular(21))),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            date,
                            style: TextStyles.heaLineStyle3
                                .copyWith(color: Colors.grey),
                          ),
                          const Gap(5),
                          Text(
                            "Date",
                            style: TextStyles.heaLineStyle4
                                .copyWith(color: Colors.grey.shade400),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            time,
                            style: TextStyles.heaLineStyle3
                                .copyWith(color: Colors.grey),
                          ),
                          const Gap(5),
                          Text(
                            "Departure Time",
                            style: TextStyles.heaLineStyle4
                                .copyWith(color: Colors.grey.shade400),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            ticketNumber,
                            style: TextStyles.heaLineStyle3
                                .copyWith(color: Colors.grey),
                          ),
                          const Gap(5),
                          Text(
                            "Number",
                            style: TextStyles.heaLineStyle4
                                .copyWith(color: Colors.grey.shade400),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Gap(AppLayout.getHeight(context, 15)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnLayout(
                        alignment: CrossAxisAlignment.start,
                        firstText: "Flutter DB",
                        secondText: "Passenger",
                      ),
                      AppColumnLayout(
                        alignment: CrossAxisAlignment.end,
                        firstText: "2152 3652689",
                        secondText: "Passenger",
                      ),
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
                                          color: Colors.grey.shade200),
                                    ),
                                  )),
                        );
                      },
                    ),
                  ),
                  Gap(AppLayout.getHeight(context, 15)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnLayout(
                        alignment: CrossAxisAlignment.start,
                        firstText: "123662 63125975",
                        secondText: "Number of E-ticket",
                      ),
                      AppColumnLayout(
                        alignment: CrossAxisAlignment.end,
                        firstText: "A8ZY32",
                        secondText: "Booking Code",
                      ),
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
                                          color: Colors.grey.shade200),
                                    ),
                                  )),
                        );
                      },
                    ),
                  ),
                  Gap(AppLayout.getHeight(context, 15)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                'assets/images/visa.png',
                                scale: 90,
                              ),
                              Gap(AppLayout.getWidth(context, 5)),
                              Text(
                                "*** 2365",
                                style: TextStyles.heaLineStyle3
                                    .copyWith(color: Colors.black),
                              )
                            ],
                          ),
                          Text(
                            "Payment Method",
                            style: TextStyles.heaLineStyle4,
                          )
                        ],
                      ),
                      AppColumnLayout(
                        alignment: CrossAxisAlignment.end,
                        firstText: "\u20B91500",
                        secondText: "Price",
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: AppLayout.getWidth(context, 15),
                        vertical: AppLayout.getHeight(context, 15)),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(
                          AppLayout.getHeight(context, 15)),
                      child: BarcodeWidget(
                        data: 'https://github.com/martinovovo',
                        barcode: Barcode.code128(),
                        drawText: false,
                        color: AppColors.text,
                        width: double.infinity,
                        height: 70,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

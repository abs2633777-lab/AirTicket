import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

import '../utils/app_layout.dart';
import '../utils/app_styles.dart';
import '../widgets/column_layout.dart';
import '../widgets/layout_builder.dart';
import '../widgets/thick_container.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool? isColor;

  const TicketView({super.key, required this.ticket, this.isColor});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return SizedBox(
      width: size.width * 0.85,
      height: AppLayout.getHeight(
        context,
        GetPlatform.isAndroid == true ? 167 : 169,
      ),

      child: Container(
        margin: EdgeInsets.only(right: AppLayout.getHeight(context, 16)),

        child: Column(
          children: [
            /* Showing the blue part of the ticket card */
            Container(
              decoration: BoxDecoration(
                color: Color(0xFF526799),

                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(AppLayout.getHeight(context, 21)),
                  topRight: Radius.circular(AppLayout.getHeight(context, 21)),
                ),
              ),

              padding: EdgeInsets.all(AppLayout.getHeight(context, 16)),

              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        ticket['from']['code'],
                        style: Styles.headLineStyle3,
                      ),

                      const Spacer(),

                      ThickContainer(isColor: isColor),

                      Expanded(
                        child: Stack(
                          children: [
                            SizedBox(
                              height: AppLayout.getHeight(context, 24),
                              child: AppLayoutBuilder(
                                sections: 6,
                                isColor: isColor,
                              ),
                            ),

                            Center(
                              child: Transform.rotate(
                                angle: 1.5,
                                child: Icon(
                                  Icons.local_airport_rounded,
                                  color: isColor == true
                                      ? Colors.white
                                      : const Color(0xFF8ACCF7),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      ThickContainer(isColor: isColor),

                      const Spacer(),

                      Text(ticket['to']['code'], style: Styles.headLineStyle3),
                    ],
                  ),

                  const Gap(3),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    children: [
                      SizedBox(
                        width: AppLayout.getWidth(context, 100),
                        child: Text(
                          ticket['from']['name'],
                          style: Styles.headLineStyle4,
                        ),
                      ),

                      Text(ticket['flying_time'], style: Styles.headLineStyle4),

                      SizedBox(
                        width: AppLayout.getWidth(context, 100),
                        child: Text(
                          ticket['to']['name'],
                          textAlign: TextAlign.end,
                          style: Styles.headLineStyle4.copyWith(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            /* Showing the orange part of the ticket card */
            Container(
              color: Styles.orangeColor,

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
                          bottomRight: Radius.circular(10),
                        ),
                      ),
                    ),
                  ),

                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: AppLayoutBuilder(sections: 18, isColor: isColor),
                    ),
                  ),

                  const SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            /* Bottom part of the orange ticket card*/
            Container(
              decoration: BoxDecoration(
                color: Styles.orangeColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(isColor == true ? 21 : 0),
                  bottomRight: Radius.circular(isColor == true ? 21 : 0),
                ),
              ),

              padding: const EdgeInsets.only(
                left: 16,
                top: 10,
                right: 16,
                bottom: 16,
              ),

              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnLayout(
                        firstText: ticket['date'],
                        secondText: "Date",
                        alignment: CrossAxisAlignment.start,
                        isColor: isColor,
                      ),

                      AppColumnLayout(
                        firstText: ticket['departure_time'],
                        secondText: "Departure",
                        alignment: CrossAxisAlignment.center,
                        isColor: isColor,
                      ),

                      AppColumnLayout(
                        firstText: '${ticket['number']}',
                        secondText: "Number",
                        alignment: CrossAxisAlignment.end,
                        isColor: isColor,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

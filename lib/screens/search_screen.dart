import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:second_project/utils/app_layout.dart';
import 'package:second_project/utils/app_styles.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return Scaffold(
      backgroundColor: Styles.bgColor,

      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: AppLayout.getWidth(context, 20),
          vertical: AppLayout.getHeight(context, 20),
        ),

        children: [
          Gap(AppLayout.getHeight(context, 40)),

          Text(
            "What are\nyou looking for?",
            style: Styles.headLineStyle1.copyWith(
              fontSize: AppLayout.getWidth(context, 35),
            ),
          ),

          Gap(AppLayout.getHeight(context, 20)),

          FittedBox(
            child: Container(
              padding: const EdgeInsets.all(3.5),

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  AppLayout.getHeight(context, 50),
                ),

                color: Color(0xFFF4F6FD),
              ),
              child: Row(
                children: [
                  Container(
                    width: size.width * 44,
                    padding: EdgeInsets.symmetric(
                      vertical: AppLayout.getHeight(context, 7),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.horizontal(
                        left: Radius.circular(AppLayout.getHeight(context, 50)),
                      ),
                      color: Colors.white,
                    ),
                    child: Center(child: Text("Airline Tickets")),
                  ),

                  Container(
                    width: size.width * 44,
                    padding: EdgeInsets.symmetric(
                      vertical: AppLayout.getHeight(context, 7),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.horizontal(
                        right: Radius.circular(
                          AppLayout.getHeight(context, 50),
                        ),
                      ),
                      color: Colors.transparent,
                    ),
                    child: Center(child: Text("Hotels")),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

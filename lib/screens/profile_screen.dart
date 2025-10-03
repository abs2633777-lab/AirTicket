import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_layout.dart';
import '../utils/app_styles.dart';
import '../widgets/column_layout.dart';
import '../widgets/layout_builder.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: AppLayout.getWidth(context, 20),
          vertical: AppLayout.getHeight(context, 20),
        ),
        children: [
          Gap(AppLayout.getHeight(context, 40)),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: AppLayout.getHeight(context, 86),
                width: AppLayout.getHeight(context, 86),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    AppLayout.getHeight(context, 10),
                  ),
                  image: const DecorationImage(
                    image: AssetImage("assets/images/img_1.png"),
                  ),
                ),
              ),
              Gap(AppLayout.getHeight(context, 10)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Book tickets", style: Styles.headLineStyle1),
                  Gap(AppLayout.getHeight(context, 2)),
                  Text(
                    "New-York",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey.shade500,
                    ),
                  ),
                  Gap(AppLayout.getHeight(context, 8)),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        AppLayout.getHeight(context, 100),
                      ),
                      color: const Color(0xFFFEF4F3),
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: AppLayout.getHeight(context, 3),
                      vertical: AppLayout.getHeight(context, 3),
                    ),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(3),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFF526799),
                          ),
                          child: const Icon(
                            FluentSystemIcons.ic_fluent_shield_filled,
                            color: Colors.white,
                            size: 15,
                          ),
                        ),
                        Gap(AppLayout.getHeight(context, 5)),
                        const Text(
                          "Premium status",
                          style: TextStyle(
                            color: Color(0xFF526799),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Gap(AppLayout.getHeight(context, 5)),
                      ],
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Column(
                children: [
                  InkWell(
                    child: Text(
                      "Edit",
                      style: Styles.textStyle.copyWith(
                        color: Styles.primaryColor,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Gap(AppLayout.getHeight(context, 8)),
          Divider(color: Colors.grey.shade300),
          Gap(AppLayout.getHeight(context, 8)),
          Stack(
            children: [
              Container(
                height: AppLayout.getHeight(context, 90),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Styles.primaryColor,
                  borderRadius: BorderRadius.circular(
                    AppLayout.getHeight(context, 18),
                  ),
                ),
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
                      width: 18,
                      color: const Color(0xFF264CD2),
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: AppLayout.getWidth(context, 25),
                  vertical: AppLayout.getHeight(context, 20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      maxRadius: 25,
                      backgroundColor: Colors.white,
                      child: Icon(
                        FluentSystemIcons.ic_fluent_lightbulb_filament_filled,
                        color: Styles.primaryColor,
                        size: 27,
                      ),
                    ),
                    Gap(AppLayout.getHeight(context, 12)),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "You've got a new award",
                          style: Styles.headLineStyle2.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "You have 95 flights in a year",
                          style: Styles.headLineStyle2.copyWith(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: Colors.white.withOpacity(0.9),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Gap(AppLayout.getHeight(context, 25)),
          Text("Accumulated miles", style: Styles.headLineStyle2),
          Gap(AppLayout.getHeight(context, 20)),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: AppLayout.getWidth(context, 15),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                AppLayout.getHeight(context, 18),
              ),
              color: Styles.bgColor,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade200,
                  blurRadius: 1,
                  spreadRadius: 1,
                ),
              ],
            ),
            child: Column(
              children: [
                Gap(AppLayout.getHeight(context, 15)),
                Text(
                  "183563",
                  style: TextStyle(
                    fontSize: 45,
                    color: Styles.textColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Gap(AppLayout.getHeight(context, 20)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Miles accrued",
                      style: Styles.headLineStyle4.copyWith(fontSize: 16),
                    ),
                    Text(
                      "13 March 2023",
                      style: Styles.headLineStyle4.copyWith(fontSize: 16),
                    ),
                  ],
                ),
                Gap(AppLayout.getHeight(context, 4)),
                Divider(color: Colors.grey.shade300),
                Gap(AppLayout.getHeight(context, 4)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    AppColumnLayout(
                      firstText: "12454",
                      secondText: "Miles",
                      alignment: CrossAxisAlignment.start,
                      isColor: false,
                    ),
                    AppColumnLayout(
                      firstText: "Air Canada",
                      secondText: "Received from",
                      alignment: CrossAxisAlignment.end,
                      isColor: false,
                    ),
                  ],
                ),
                Gap(AppLayout.getHeight(context, 12)),
                const AppLayoutBuilder(sections: 12, isColor: false),
                Gap(AppLayout.getHeight(context, 12)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    AppColumnLayout(
                      firstText: "24",
                      secondText: "Miles",
                      alignment: CrossAxisAlignment.start,
                      isColor: false,
                    ),
                    AppColumnLayout(
                      firstText: "McDonal's",
                      secondText: "Received from",
                      alignment: CrossAxisAlignment.end,
                      isColor: false,
                    ),
                  ],
                ),
                Gap(AppLayout.getHeight(context, 12)),
                const AppLayoutBuilder(sections: 12, isColor: false),
                Gap(AppLayout.getHeight(context, 12)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    AppColumnLayout(
                      firstText: "34678",
                      secondText: "Miles",
                      alignment: CrossAxisAlignment.start,
                      isColor: false,
                    ),
                    AppColumnLayout(
                      firstText: "KQ",
                      secondText: "Received from",
                      alignment: CrossAxisAlignment.end,
                      isColor: false,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Gap(AppLayout.getHeight(context, 25)),
          InkWell(
            child: Center(
              child: Text(
                "How to get more miles",
                style: Styles.textStyle.copyWith(
                  color: Styles.primaryColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

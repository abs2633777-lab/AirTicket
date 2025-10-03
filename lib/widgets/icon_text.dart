import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../utils/app_layout.dart';
import '../utils/app_styles.dart';

class AppIconText extends StatelessWidget {
  final IconData icon;
  final String text;

  const AppIconText({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppLayout.getWidth(context, 10)),
        color: Colors.white,
      ),
      padding: EdgeInsets.symmetric(
        vertical: AppLayout.getHeight(context, 12),
        horizontal: AppLayout.getWidth(context, 12),
      ),
      child: Row(
        children: [
          Icon(icon, color: const Color(0xFFBFC2DF)),
          Gap(AppLayout.getWidth(context, 10)),
          Text(text, style: Styles.textStyle),
        ],
      ),
    );
  }
}

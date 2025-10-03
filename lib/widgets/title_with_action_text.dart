import 'package:flutter/material.dart';
import '../utils/app_styles.dart';

class AppTitleWithActionText extends StatelessWidget {
  final String title;
  final String actionText;

  const AppTitleWithActionText(
      {super.key, required this.title, required this.actionText});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Styles.headLineStyle2,
        ),
        InkWell(
          onTap: () {
            print("Viewing all...");
          },
          child: Text(
            actionText,
            style: Styles.textStyle.copyWith(color: Styles.primaryColor),
          ),
        ),
      ],
    );
  }
}
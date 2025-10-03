import 'package:flutter/material.dart';

class AppLayoutBuilder extends StatelessWidget {
  final bool? isColor;
  final int sections;
  final double width;
  final double height;
  const AppLayoutBuilder({super.key, this.isColor, required this.sections, this.width = 3, this.height = 1});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Flex(
          direction: Axis.horizontal,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: List.generate(
              (constraints.constrainWidth() / sections).floor(),
                  (index) => SizedBox(
                width: width,
                height: height,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                      color: isColor == true
                          ? Colors.white
                          : Colors.grey.shade300),
                ),
              )),
        );
      },
    );
  }
}
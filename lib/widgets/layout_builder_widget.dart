import 'package:flutter/material.dart';

class AppLayoutBuilderWidget extends StatelessWidget {
  final bool? isColor;
  final int sections;
  final double dotWidth;
  final double dotHeigh;
  const AppLayoutBuilderWidget({
    super.key,
    this.isColor,
    required this.sections,
    required this.dotWidth,
    required this.dotHeigh,
  });

  @override
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
              width: dotWidth,
              height: dotHeigh,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: isColor == null ? Colors.white : Colors.grey[300],
                ),
              ), //점선 만들기 https://youtu.be/71AsYo2q_0Y?t=7440
            ),
          ),
        );
      },
    );
  }
}

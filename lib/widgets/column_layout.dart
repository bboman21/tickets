import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_layout.dart';
import '../utils/app_styles.dart';

class AppColumnLayout extends StatelessWidget {
  final String text;
  final String subText;
  final CrossAxisAlignment alignment;
  final bool? isColor;
  const AppColumnLayout(
      {super.key,
      required this.text,
      required this.subText,
      required this.alignment,
      this.isColor});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        Text(
          text,
          style: isColor == null
              ? Styles.headLineStyle3.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                )
              : Styles.headLineStyle3.copyWith(
                  fontWeight: FontWeight.w600,
                ),
        ),
        Gap(AppLayout.getHeight(4)),
        Text(
          subText,
          style: isColor == null
              ? Styles.headLineStyle4.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                )
              : Styles.headLineStyle4.copyWith(
                  fontWeight: FontWeight.w600,
                ),
        ),
      ],
    );
  }
}

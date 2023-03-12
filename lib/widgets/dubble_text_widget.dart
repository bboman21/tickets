import 'package:flutter/material.dart';

import '../utils/app_styles.dart';

class AppDubbleTextWidget extends StatelessWidget {
  final String title;
  final String linkText;

  const AppDubbleTextWidget(
      {super.key, required this.title, required this.linkText});

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
            // print('TapTap');
          },
          child: Text(
            linkText,
            style: Styles.textStyle.copyWith(
              color: Styles.primaryColor,
            ),
          ),
        ),
      ],
    );
  }
}

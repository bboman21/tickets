import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_layout.dart';
import '../utils/app_styles.dart';

class AppIconText extends StatelessWidget {
  final IconData icon;
  final String text;

  const AppIconText({
    super.key,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(AppLayout.getWidth(12)),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(8)),
      child: Row(
        children: [
          Icon(
            icon,
            color: Colors.grey[400],
            size: 28,
          ),
          Gap(AppLayout.getWidth(8)),
          Text(
            text,
            style: Styles.headLineStyle3.copyWith(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Colors.grey[600],
            ),
          ),
        ],
      ),
    );
  }
}

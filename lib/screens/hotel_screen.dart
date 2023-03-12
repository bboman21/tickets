import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:tickets/utils/app_layout.dart';

import '../utils/app_styles.dart';

class HotelScreen extends StatelessWidget {
  final Map<String, dynamic> hotel;

  const HotelScreen({
    super.key,
    required this.hotel,
  });

  @override
  Widget build(BuildContext context) {
    // print('Hotel price is ${hotel['price']}');
    final size = AppLayout.getSize(context);

    return Container(
      width: size.width * 0.6,
      height: AppLayout.getHeight(350),
      margin: EdgeInsets.only(
        top: AppLayout.getHeight(8),
        bottom: AppLayout.getHeight(8),
        right: AppLayout.getHeight(16),
      ),
      padding: EdgeInsets.symmetric(
        vertical: AppLayout.getHeight(16),
        horizontal: AppLayout.getWidth(16),
      ),
      decoration: BoxDecoration(
          color: Styles.primaryColor,
          borderRadius: BorderRadius.circular(24),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 4,
              spreadRadius: 2,
            )
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: AppLayout.getHeight(200),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Styles.primaryColor,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/${hotel['image']}'),
              ),
            ),
          ),
          Gap(AppLayout.getHeight(12)),
          Text(
            hotel['place'],
            style: Styles.headLineStyle2.copyWith(
              color: Styles.kakigreyColor,
            ),
          ),
          Gap(AppLayout.getHeight(4)),
          Text(
            hotel['destination'],
            style: Styles.headLineStyle4.copyWith(
              color: Colors.white.withOpacity(0.7),
            ),
          ),
          Gap(AppLayout.getHeight(12)),
          Text(
            '\$ ${hotel['price']} /night',
            style: Styles.headLineStyle1.copyWith(
              color: Styles.kakigreyColor,
            ),
          ),
        ],
      ),
    );
  }
}

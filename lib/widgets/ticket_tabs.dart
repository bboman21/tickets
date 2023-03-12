// https://youtu.be/71AsYo2q_0Y?t=15971

import 'package:flutter/material.dart';

import '../utils/app_layout.dart';

class AppTicketTabs extends StatelessWidget {
  final String firstTab;
  final String secondTab;

  const AppTicketTabs(
      {super.key, required this.firstTab, required this.secondTab});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return FittedBox(
      child: Container(
        padding: EdgeInsets.all(AppLayout.getHeight(3)),
        decoration: BoxDecoration(
            color: const Color(0xfff4f6fd),
            borderRadius: BorderRadius.circular(AppLayout.getWidth(50))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Airline Tickets
            Container(
              width: size.width * .44,
              padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(8)),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(AppLayout.getHeight(50)),
                ),
              ),
              child: Center(
                child: Text(
                  firstTab,
                  style: TextStyle(
                      fontWeight: FontWeight.w600, color: Colors.grey[800]),
                ),
              ),
            ),
            //Hotels
            Container(
              width: size.width * .44,
              padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(8)),
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.horizontal(
                  right: Radius.circular(AppLayout.getHeight(50)),
                ),
              ),
              child: Center(
                child: Text(
                  secondTab,
                  style: TextStyle(
                      fontWeight: FontWeight.w600, color: Colors.grey[600]),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

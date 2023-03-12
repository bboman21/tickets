//https://youtu.be/71AsYo2q_0Y?t=12393

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:tickets/utils/app_layout.dart';
import 'package:tickets/widgets/dubble_text_widget.dart';

import '../utils/app_styles.dart';
import '../widgets/icon_text.dart';
import '../widgets/ticket_tabs.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getWidth(20),
          ),
          child: ListView(
            children: [
              Gap(AppLayout.getHeight(40)),
              Text(
                'What are\nyou looking for?',
                style: Styles.headLineStyle1.copyWith(
                  fontSize: AppLayout.getWidth(36),
                ),
              ),
              Gap(AppLayout.getHeight(28)),
              const AppTicketTabs(
                firstTab: 'Airline Tickets',
                secondTab: 'Hotels',
              ),
              Gap(AppLayout.getHeight(28)),
              const AppIconText(
                icon: Icons.flight_takeoff_rounded,
                text: 'Departure',
              ),
              Gap(AppLayout.getHeight(20)),
              const AppIconText(
                icon: Icons.flight_land_rounded,
                text: 'Arrival',
              ),
              Gap(AppLayout.getHeight(28)),
              Container(
                height: 56,
                decoration: BoxDecoration(
                    color: const Color(0xff314CD4),
                    borderRadius:
                        BorderRadius.circular(AppLayout.getWidth(12))),
                child: Center(
                  child: Text(
                    'Find tickets',
                    style: Styles.headLineStyle3.copyWith(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Gap(AppLayout.getHeight(40)),
              const AppDubbleTextWidget(
                title: 'Upcoming Flights',
                linkText: 'View all',
              ),
              Gap(AppLayout.getHeight(16)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: size.width * .43,
                    height: AppLayout.getHeight(380),
                    padding: EdgeInsets.all(AppLayout.getWidth(12)),
                    // margin: EdgeInsets.symmetric(
                    //   vertical: AppLayout.getHeight(2),
                    //   horizontal: AppLayout.getHeight(4),
                    // ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.circular(AppLayout.getHeight(20)),
                      // boxShadow: [
                      //   BoxShadow(
                      //     color: Colors.black.withOpacity(0.1),
                      //     blurRadius: 4,
                      //     spreadRadius: 2,
                      //   ),
                      // ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: AppLayout.getHeight(190),
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                    'assets/images/airplane_seat.png')),
                            borderRadius:
                                BorderRadius.circular(AppLayout.getHeight(12)),
                          ),
                        ),
                        Gap(AppLayout.getHeight(12)),
                        Text(
                          '20% discount on business class \ntickets from Airline 0n International',
                          style: Styles.headLineStyle3
                              .copyWith(fontSize: 20, color: Colors.grey[600]),
                        )
                      ],
                    ),
                  ),
                  //https://youtu.be/71AsYo2q_0Y?t=14878
                  //Circle Line
                  Column(
                    children: [
                      Stack(
                        children: [
                          Container(
                            width: size.width * .43,
                            height: AppLayout.getHeight(200),
                            padding: EdgeInsets.symmetric(
                                vertical: AppLayout.getHeight(16),
                                horizontal: AppLayout.getWidth(12)),
                            // margin: EdgeInsets.symmetric(
                            //   vertical: AppLayout.getHeight(2),
                            //   horizontal: AppLayout.getHeight(4),
                            // ),
                            decoration: BoxDecoration(
                              color: const Color(0xff3AB8B9),
                              borderRadius:
                                  BorderRadius.circular(AppLayout.getWidth(20)),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Discount \nfor survey',
                                  style: Styles.headLineStyle2.copyWith(
                                    color: Colors.white.withOpacity(0.8),
                                    fontSize: 22,
                                  ),
                                ),
                                Gap(AppLayout.getHeight(8)),
                                Text(
                                  'Take the survey about our services and get a discount',
                                  style: Styles.headLineStyle3.copyWith(
                                    fontSize: 19,
                                    color: Colors.white.withOpacity(0.7),
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            left: 130,
                            top: -45,
                            child: Container(
                              padding: EdgeInsets.all(AppLayout.getHeight(35)),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                    width: 18,
                                    color: Colors.black.withOpacity(0.15)),
                                color: Colors.transparent,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Gap(AppLayout.getHeight(12)),
                      Container(
                        width: size.width * .43,
                        height: AppLayout.getHeight(168),
                        padding: EdgeInsets.symmetric(
                            vertical: AppLayout.getHeight(16),
                            horizontal: AppLayout.getWidth(12)),
                        margin: EdgeInsets.symmetric(
                          vertical: AppLayout.getHeight(2),
                          horizontal: AppLayout.getHeight(4),
                        ),
                        decoration: BoxDecoration(
                          color: const Color(0xffDF6040),
                          borderRadius:
                              BorderRadius.circular(AppLayout.getWidth(20)),
                        ),
                        child: Column(
                          children: [
                            Text(
                              'Take love',
                              style: Styles.headLineStyle2
                                  .copyWith(color: Colors.white),
                            ),
                            Gap(AppLayout.getHeight(8)),
                            RichText(
                              text: const TextSpan(
                                children: [
                                  TextSpan(
                                    text: '😍',
                                    style: TextStyle(fontSize: 34),
                                  ),
                                  TextSpan(
                                    text: '🥰',
                                    style: TextStyle(fontSize: 44),
                                  ),
                                  TextSpan(
                                    text: '😘',
                                    style: TextStyle(fontSize: 34),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

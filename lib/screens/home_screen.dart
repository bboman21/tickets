import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:tickets/screens/ticket_view.dart';
import 'package:tickets/utils/app_layout.dart';
import 'package:tickets/widgets/dubble_text_widget.dart';

import '../utils/app_info_list.dart';
import '../utils/app_styles.dart';
import 'hotel_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(20)),
          child: ListView(
            children: [
              Gap(AppLayout.getHeight(40)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Good morning',
                        style: Styles.headLineStyle3,
                      ),
                      Gap(AppLayout.getHeight(4)),
                      Text(
                        'Book Tickets',
                        style: Styles.headLineStyle1,
                      ),
                    ],
                  ),
                  Container(
                    width: AppLayout.getWidth(56),
                    height: AppLayout.getHeight(56),
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                        fit: BoxFit.fitHeight,
                        image: AssetImage('assets/images/airplain.png'),
                      ),
                    ),

                    // https://youtu.be/71AsYo2q_0Y?t=3524 이미지 사용하기
                  ),
                ],
              ),
              Gap(AppLayout.getHeight(32)),
              //search inputBox
              Container(
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.75),
                    borderRadius: BorderRadius.circular(8)),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Icon(
                        FluentSystemIcons.ic_fluent_search_regular,
                        color: Colors.grey[500],
                      ),
                      const Gap(8),
                      Text(
                        'Search',
                        style: Styles.headLineStyle3,
                      )
                    ],
                  ),
                ),
              ),
              Gap(AppLayout.getHeight(
                  32)), //https://youtu.be/71AsYo2q_0Y?t=5504
              //Upcoming Flights
              const AppDubbleTextWidget(
                title: 'Upcoming Fligths',
                linkText: 'View all',
              ),
              Gap(AppLayout.getHeight(8)),
              //Ticket List
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.only(left: 8),
                child: Row(
                    children: ticketList
                        .map((singleTicket) => TicketVeiw(ticket: singleTicket))
                        .toList()),
              ),

              Gap(AppLayout.getHeight(
                  32)), //https://youtu.be/71AsYo2q_0Y?t=5504
              //Hotels
              const AppDubbleTextWidget(
                title: 'Hotels',
                linkText: 'View all',
              ),
              Gap(AppLayout.getHeight(8)),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.only(left: 8),
                child: Row(
                    children: hotelList
                        .map((singleHotel) => HotelScreen(hotel: singleHotel))
                        .toList()),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

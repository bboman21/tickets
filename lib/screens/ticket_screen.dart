import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:tickets/screens/ticket_view.dart';
import 'package:tickets/utils/app_info_list.dart';

import '../utils/app_layout.dart';
import '../utils/app_styles.dart';
import '../widgets/column_layout.dart';
import '../widgets/layout_builder_widget.dart';
import '../widgets/ticket_tabs.dart';
import 'package:barcode_widget/barcode_widget.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

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
          child: Stack(
            children: [
              ListView(
                children: [
                  Gap(AppLayout.getHeight(40)),
                  Text(
                    'Tickets',
                    style: Styles.headLineStyle1.copyWith(
                      fontSize: AppLayout.getWidth(36),
                    ),
                  ),
                  Gap(AppLayout.getHeight(24)),
                  const AppTicketTabs(
                    firstTab: 'Upcoming',
                    secondTab: 'Previous',
                  ),
                  Gap(AppLayout.getHeight(28)),
                  Container(
                    padding: EdgeInsets.only(left: AppLayout.getWidth(16)),
                    child: TicketVeiw(
                      ticket: ticketList[0],
                      isColor: false,
                    ),
                  ),
                  //카드 확장 정보

                  Container(
                    margin: EdgeInsets.symmetric(
                        horizontal: AppLayout.getWidth(16)),
                    padding: EdgeInsets.symmetric(
                        vertical: AppLayout.getWidth(20),
                        horizontal: AppLayout.getHeight(16)),
                    width: size.width * 0.85,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(AppLayout.getHeight(16)),
                          bottomRight: Radius.circular(AppLayout.getHeight(16)),
                        )),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            AppColumnLayout(
                              alignment: CrossAxisAlignment.start,
                              text: 'Flutter Dash',
                              subText: 'Passenger',
                              isColor: true,
                            ),
                            AppColumnLayout(
                              alignment: CrossAxisAlignment.end,
                              text: '5221 478566',
                              subText: 'Passport',
                              isColor: true,
                            ),
                          ],
                        ),
                        Gap(AppLayout.getHeight(28)),
                        const AppLayoutBuilderWidget(
                          sections: 15,
                          dotHeigh: 1,
                          dotWidth: 6,
                          isColor: false,
                        ),
                        Gap(AppLayout.getHeight(28)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            AppColumnLayout(
                              alignment: CrossAxisAlignment.start,
                              text: '0055 444 77147',
                              subText: 'Number of E-ticket',
                              isColor: true,
                            ),
                            AppColumnLayout(
                              alignment: CrossAxisAlignment.end,
                              text: 'B2SG28',
                              subText: 'Booking code',
                              isColor: true,
                            ),
                          ],
                        ),
                        Gap(AppLayout.getHeight(28)),
                        const AppLayoutBuilderWidget(
                          sections: 15,
                          dotHeigh: 1,
                          dotWidth: 6,
                          isColor: false,
                        ),
                        Gap(AppLayout.getHeight(28)),
                        //https://youtu.be/71AsYo2q_0Y?t=19961 비자카드 이미지 삽입
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      'assets/images/visa.png',
                                      scale: 9,
                                    ),
                                    Text(
                                      ' *** 2462',
                                      style: Styles.headLineStyle3.copyWith(
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                                Gap(AppLayout.getWidth(4)),
                                Text(
                                  'payment method',
                                  style: Styles.headLineStyle4.copyWith(
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                            const AppColumnLayout(
                              alignment: CrossAxisAlignment.end,
                              text: '\$249.99',
                              subText: 'Price',
                              isColor: true,
                            ),
                          ],
                        ),
                        Gap(AppLayout.getHeight(28)),
                        const AppLayoutBuilderWidget(
                          sections: 15,
                          dotHeigh: 1,
                          dotWidth: 6,
                          isColor: false,
                        ),
                        Gap(AppLayout.getHeight(28)),

                        //Bar code

                        // ClipRRect(
                        //   borderRadius:
                        //       BorderRadius.circular(AppLayout.getHeight(30)),
                        //   child: Image.asset(
                        //     'assets/images/barCode.png',
                        //     scale: 1.2,
                        //   ),
                        // ),
                        ClipRRect(
                          borderRadius:
                              BorderRadius.circular(AppLayout.getHeight(20)),
                          child: BarcodeWidget(
                            barcode: Barcode.code128(),
                            data: 'https://github.com/martinovovo',
                            drawText: false,
                            color: Styles.textColor,
                            width: double.infinity,
                            height: AppLayout.getHeight(80),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Gap(AppLayout.getHeight(12)),
                  Container(
                    padding: EdgeInsets.only(
                      left: AppLayout.getWidth(16),
                    ),
                    child: TicketVeiw(
                      ticket: ticketList[0],
                      // isColor: false,
                    ),
                  ),
                ],
              ),
              Positioned(
                left: AppLayout.getWidth(6),
                top: AppLayout.getHeight(300),
                child: Container(
                  padding: const EdgeInsets.all(3),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Styles.textColor, width: 2)),
                  child: CircleAvatar(
                    maxRadius: 4,
                    backgroundColor: Styles.textColor,
                  ),
                ),
              ),
              Positioned(
                right: AppLayout.getWidth(6),
                top: AppLayout.getHeight(300),
                child: Container(
                  padding: const EdgeInsets.all(3),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Styles.textColor, width: 2)),
                  child: CircleAvatar(
                    maxRadius: 4,
                    backgroundColor: Styles.textColor,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

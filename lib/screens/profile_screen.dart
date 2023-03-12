import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:tickets/utils/app_layout.dart';
import 'package:tickets/utils/app_styles.dart';
import 'package:tickets/widgets/layout_builder_widget.dart';

import '../widgets/column_layout.dart';
import '../widgets/dubble_text_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: AppLayout.getWidth(20),
              vertical: AppLayout.getHeight(20)),
          child: Stack(
            children: [
              ListView(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        // padding: const EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          image: const DecorationImage(
                              image: AssetImage('assets/images/airplain.png')),
                          borderRadius:
                              BorderRadius.circular(AppLayout.getHeight(20)),
                        ),
                        width: AppLayout.getWidth(92),
                        height: AppLayout.getHeight(92),
                      ),
                      Gap(AppLayout.getWidth(12)),
                      SizedBox(
                        height: AppLayout.getHeight(92),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Book Tickets',
                              style: Styles.headLineStyle1.copyWith(
                                fontSize: 28,
                              ),
                            ),
                            Text(
                              'New-York',
                              style: Styles.headLineStyle4,
                            ),
                            Container(
                              padding: const EdgeInsets.all(4),
                              decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.6),
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(20)),
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.all(3),
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color(0xff60668D),
                                    ),
                                    child: const Icon(
                                      FluentSystemIcons.ic_fluent_shield_filled,
                                      color: Colors.white,
                                      size: 16,
                                    ),
                                  ),
                                  Gap(AppLayout.getWidth(6)),
                                  const Text('Premium status')
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Spacer(),
                      SizedBox(
                        width: 100,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            InkWell(
                              onTap: () {
                                print('You are tapped');
                              },
                              child: Text(
                                'Edit',
                                style: Styles.headLineStyle3.copyWith(
                                    color: const Color(0xff9E9EB3),
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Gap(AppLayout.getWidth(40)),
                  Stack(
                    children: [
                      Container(
                        height: AppLayout.getHeight(100),
                        width: double.infinity,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 16),
                        decoration: BoxDecoration(
                          color: Styles.primaryColor,
                          borderRadius: BorderRadius.all(
                              Radius.circular(AppLayout.getHeight(16))),
                        ),
                      ),
                      Positioned(
                        left: AppLayout.getWidth(335),
                        top: AppLayout.getWidth(-40),
                        child: Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              width: 16,
                              color: const Color(0xff264BD0),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: AppLayout.getWidth(26),
                            vertical: AppLayout.getHeight(24)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              maxRadius: 26,
                              backgroundColor: Colors.white,
                              child: Icon(
                                FluentSystemIcons
                                    .ic_fluent_lightbulb_filament_filled,
                                size: 32,
                                color: Styles.primaryColor,
                              ),
                            ),
                            Gap(AppLayout.getWidth(12)),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'You\'ve got a new award',
                                  style: Styles.headLineStyle2.copyWith(
                                      color: Colors.white, fontSize: 22),
                                ),
                                Gap(AppLayout.getWidth(4)),
                                Text(
                                  'You have 150 flights in a year',
                                  style: Styles.headLineStyle3.copyWith(
                                    color: Colors.white70,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Gap(AppLayout.getWidth(24)),
                  const AppDubbleTextWidget(
                    title: 'Accumulated miles',
                    linkText: '',
                  ),
                  Container(
                    padding: const EdgeInsets.only(
                      top: 32,
                      bottom: 20,
                      right: 20,
                      left: 20,
                    ),
                    child: Column(
                      children: [
                        Center(
                          child: Text(
                            '192802',
                            style: Styles.headLineStyle1.copyWith(fontSize: 48),
                          ),
                        ),
                        Gap(AppLayout.getWidth(16)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Miles accrued',
                              style: Styles.headLineStyle3.copyWith(
                                  color: Colors.grey[500],
                                  fontWeight: FontWeight.w600),
                            ),
                            Text(
                              '23 May 2021',
                              style: Styles.headLineStyle3.copyWith(
                                  color: Colors.grey[500],
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                        Gap(AppLayout.getWidth(16)),
                        const AppLayoutBuilderWidget(
                          sections: 12,
                          dotWidth: 4,
                          dotHeigh: 1,
                          isColor: false,
                        ),
                        Gap(AppLayout.getWidth(16)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            AppColumnLayout(
                              alignment: CrossAxisAlignment.start,
                              text: '23 042',
                              subText: 'Miles',
                              isColor: true,
                            ),
                            AppColumnLayout(
                              alignment: CrossAxisAlignment.end,
                              text: 'AirLine CO',
                              subText: 'Received from',
                              isColor: true,
                            ),
                          ],
                        ),
                        Gap(AppLayout.getWidth(16)),
                        const AppLayoutBuilderWidget(
                          sections: 12,
                          dotWidth: 4,
                          dotHeigh: 1,
                          isColor: false,
                        ),
                        Gap(AppLayout.getWidth(16)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            AppColumnLayout(
                              alignment: CrossAxisAlignment.start,
                              text: '24',
                              subText: 'Miles',
                              isColor: true,
                            ),
                            AppColumnLayout(
                              alignment: CrossAxisAlignment.end,
                              text: 'McDonal\'s',
                              subText: 'Received from',
                              isColor: true,
                            ),
                          ],
                        ),
                        Gap(AppLayout.getWidth(16)),
                        const AppLayoutBuilderWidget(
                          sections: 12,
                          dotWidth: 4,
                          dotHeigh: 1,
                          isColor: false,
                        ),
                        Gap(AppLayout.getWidth(16)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            AppColumnLayout(
                              alignment: CrossAxisAlignment.start,
                              text: '53 340',
                              subText: 'Miles',
                              isColor: true,
                            ),
                            AppColumnLayout(
                              alignment: CrossAxisAlignment.end,
                              text: 'Exuma',
                              subText: 'Received from',
                              isColor: true,
                            ),
                          ],
                        ),
                        Gap(AppLayout.getWidth(32)),
                        InkWell(
                          onTap: () {
                            print("Tapped");
                          },
                          child: Text(
                            'How to get more miles',
                            style: Styles.headLineStyle3.copyWith(
                                fontWeight: FontWeight.w600,
                                color: Styles.primaryColor),
                          ),
                        ),
                      ],
                    ),
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

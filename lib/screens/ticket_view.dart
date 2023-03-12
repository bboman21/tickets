//https://youtu.be/71AsYo2q_0Y?t=5838

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get_utils/src/platform/platform.dart';
import 'package:tickets/utils/app_layout.dart';
import 'package:tickets/utils/app_styles.dart';
import 'package:tickets/widgets/thick_container.dart';

import '../widgets/column_layout.dart';
import '../widgets/layout_builder_widget.dart';

class TicketVeiw extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool? isColor;

  const TicketVeiw({super.key, required this.ticket, this.isColor});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width * 0.85,
      height: AppLayout.getHeight(GetPlatform.isAndroid == true
          ? 173 //iPhone
          : 174), //스마트폰 높이에 맞춰 비율 조정 https://youtu.be/71AsYo2q_0Y?t=11858 //183
      child: Container(
        margin: EdgeInsets.only(
          // top: 8,
          // bottom: 8,
          right: AppLayout.getHeight(16),
        ),
        child: Column(
          children: [
            //카드 상단 푸른색 부분
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(AppLayout.getHeight(16)),
                  topRight: Radius.circular(AppLayout.getHeight(16)),
                ),
                color: isColor == null ? const Color(0xff516798) : Colors.white,
              ),
              padding: EdgeInsets.all(AppLayout.getHeight(16)),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: AppLayout.getWidth(60),
                        child: Text(
                          ticket['from']['code'],
                          textAlign: TextAlign.start,
                          style: isColor == null
                              ? Styles.headLineStyle3.copyWith(
                                  color: Colors.white,
                                )
                              : Styles.headLineStyle3.copyWith(
                                  color: Styles.textColor,
                                ),
                        ),
                      ),
                      Expanded(
                        child: Container(),
                      ),
                      const ThickContainer(
                        isColor: true,
                      ),
                      Expanded(
                        //라인 원 그리기
                        child: Stack(
                          children: [
                            SizedBox(
                              height: AppLayout.getHeight(24),
                              child: const AppLayoutBuilderWidget(
                                sections: 6,
                                dotWidth: 3,
                                dotHeigh: 1,
                                isColor: false,
                              ),
                            ),
                            Center(
                              child: Transform.rotate(
                                angle: 1.5,
                                child: Icon(
                                  Icons.local_airport_rounded,
                                  color: isColor == null
                                      ? Colors.white
                                      : const Color(0xffA0C8E5),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      //비행기 아이콘

                      const ThickContainer(
                        isColor: true,
                      ),
                      Expanded(
                        //라인 원 그리기
                        child: Container(),
                      ),
                      SizedBox(
                        width: AppLayout.getWidth(60),
                        child: Text(
                          ticket['to']['code'],
                          textAlign: TextAlign.end,
                          style: isColor == null
                              ? Styles.headLineStyle3
                                  .copyWith(color: Colors.white)
                              : Styles.headLineStyle3.copyWith(
                                  color: Styles.textColor,
                                ),
                        ),
                      ),
                    ],
                  ),
                  Gap(AppLayout.getHeight(4)),
                  //도시명과 이동시간
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: AppLayout.getWidth(100),
                        height: AppLayout.getHeight(20),
                        child: Text(
                          ticket['from']['name'],
                          textAlign: TextAlign.start,
                          style: isColor == null
                              ? Styles.headLineStyle4
                                  .copyWith(color: Colors.white)
                              : Styles.headLineStyle4,
                        ),
                      ),
                      Text(
                        ticket['flying_time'],
                        style: isColor == null
                            ? Styles.headLineStyle4.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.w600)
                            : Styles.headLineStyle3.copyWith(
                                // color: Styles.textColor,
                                fontSize: 18,
                                fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        width: AppLayout.getWidth(100),
                        height: AppLayout.getHeight(20),
                        child: Text(
                          ticket['to']['name'],
                          textAlign: TextAlign.end,
                          style: isColor == null
                              ? Styles.headLineStyle4
                                  .copyWith(color: Colors.white)
                              : Styles.headLineStyle4,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            //카드 하단 붉은색 부분
            Container(
              decoration: BoxDecoration(
                color: isColor == null ? const Color(0xffF27D67) : Colors.white,
              ),
              // padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 10,
                        height: 20,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            color: isColor == null
                                ? Colors.white
                                : Styles.textColor.withOpacity(0),
                            borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      const Expanded(
                        child: AppLayoutBuilderWidget(
                          sections: 15,
                          dotWidth: 6,
                          dotHeigh: 1,
                          isColor: false,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                        height: 20,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            color: isColor == null
                                ? Colors.white
                                : Styles.textColor.withOpacity(0),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(isColor == null ? 16 : 0),
                  bottomRight: Radius.circular(isColor == null ? 16 : 0),
                ),
                color: isColor == null ? const Color(0xffF27D67) : Colors.white,
              ),
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  //도시명과 이동시간
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnLayout(
                        text: ticket['date'],
                        subText: 'Date',
                        isColor: isColor,
                        alignment: CrossAxisAlignment.start,
                      ),
                      AppColumnLayout(
                        text: ticket['departure_time'],
                        subText: 'Departure time',
                        isColor: isColor,
                        alignment: CrossAxisAlignment.center,
                      ),
                      AppColumnLayout(
                        text: ticket['number'].toString(),
                        subText: 'Number',
                        isColor: isColor,
                        alignment: CrossAxisAlignment.end,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

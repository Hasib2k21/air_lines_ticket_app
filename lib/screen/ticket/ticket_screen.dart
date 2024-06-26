import 'package:air_lines_ticket_app/base/res/media.dart';
import 'package:air_lines_ticket_app/base/res/styles/app_styles.dart';
import 'package:air_lines_ticket_app/base/utils/all_json.dart';
import 'package:air_lines_ticket_app/base/widget/app_layoutbuilder_widget.dart';
import 'package:air_lines_ticket_app/base/widget/ticket_view.dart';
import 'package:air_lines_ticket_app/screen/search/widget/app_ticket_tabs.dart';
import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';

import '../../base/widget/app_colum_text_layout.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: Stack(
          children: [ListView(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      children: [
        SizedBox(
          height: 40,
        ),
        Text(
          'Tickets',
          style: AppStyles.headLineStyle1,
        ),
        SizedBox(
          height: 20,
        ),
        AppTicketTabs(
          firstTab: 'Upcoming',
          secondTab: 'Previous',
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          padding: EdgeInsets.only(left: 16),
          child: TicketView(
            ticket: ticketList[0],
            isColor: true,
          ),
        ),
        const SizedBox(
          height: 1,
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 16),
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          color: AppStyles.ticketColor,
          child: Column(
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppColumTextLayout(
                    topText: 'Flutter DB',
                    bottomText: "Passenger",
                    alignment: CrossAxisAlignment.start,
                    isColor: true,
                  ),
                  AppColumTextLayout(
                    topText: '525545 555',
                    bottomText: "Passport",
                    alignment: CrossAxisAlignment.end,
                    isColor: true,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const AppLayoutBuilderWidget(
                randomDivider: 15,
                width: 5,
                isColor: false,
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppColumTextLayout(
                    topText: '1545255454',
                    bottomText: "Number of E-tickets",
                    alignment: CrossAxisAlignment.start,
                    isColor: true,
                  ),
                  AppColumTextLayout(
                    topText: 'B255454',
                    bottomText: "Booking code",
                    alignment: CrossAxisAlignment.end,
                    isColor: true,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const AppLayoutBuilderWidget(
                randomDivider: 15,
                width: 5,
                isColor: false,
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            AppMedia.visaCard,
                            scale: 11,
                          ),
                          Text(
                            '*** 2645',
                            style: AppStyles.headLineStyle3,
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Payment Method',
                        style: AppStyles.headLineStyle4,
                      )
                    ],
                  ),
                  const AppColumTextLayout(
                    topText: '\$454.22',
                    bottomText: "Price",
                    alignment: CrossAxisAlignment.end,
                    isColor: true,
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: 1,
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 15),
          padding: EdgeInsets.symmetric(vertical: 20),
          decoration: BoxDecoration(
              color: AppStyles.ticketColor,
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(21),
                  bottomLeft: Radius.circular(21))),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: BarcodeWidget(
                height: 70,
                barcode: Barcode.code128(),
                drawText: false,
                data: "http:/www.tesla.com",
                color: AppStyles.textColor,
                width: double.infinity,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          padding: EdgeInsets.only(left: 16),
          child: TicketView(
            ticket: ticketList[0],

          ),
        ),
      ],
    ),
    ])
    );
  }
}

import 'package:air_lines_ticket_app/base/res/media.dart';
import 'package:air_lines_ticket_app/base/res/styles/app_styles.dart';
import 'package:air_lines_ticket_app/screen/search/widget/app_text_icon.dart';
import 'package:air_lines_ticket_app/screen/search/widget/app_ticket_tabs.dart';
import 'package:air_lines_ticket_app/screen/search/widget/find_tickets.dart';
import 'package:air_lines_ticket_app/screen/search/widget/ticket_promotion.dart';
import 'package:flutter/material.dart';

import '../../base/utils/app_routes.dart';
import '../../base/widget/app_double_text.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          const SizedBox(
            height: 40,
          ),
          Text('What are\n you looking for?',
              style: AppStyles.headLineStyle1.copyWith(
                fontSize: 35,
              )),
          const SizedBox(
            height: 20,
          ),
          const AppTicketTabs(firstTab: 'All Tickets', secondTab: 'Hotels',),
          const SizedBox(
            height: 25,
          ),
          const AppTextIcon(
            icon: Icons.flight_takeoff_rounded,
            text: 'Departure',
          ),
          const SizedBox(
            height: 20,
          ),
          const AppTextIcon(
            icon: Icons.flight_land_rounded,
            text: "Arrival",
          ),
          const SizedBox(
            height: 25,
          ),
          const FindTickets(),
          const SizedBox(
            height: 40,
          ),
          AppDoubleText(
            bigText: 'Upcoming Flights',
            smallText: 'View all',
            func: () {
              Navigator.pushNamed(context, AppRoutes.allTickets);
            },
          ),
          const SizedBox(
            height: 15,
          ),
         TicketPromotion()
        ],
      ),
    );
  }
}

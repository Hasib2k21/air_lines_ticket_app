import 'package:air_lines_ticket_app/screen/all_tickets.dart';
import 'package:air_lines_ticket_app/screen/all_hotels.dart';
import 'package:flutter/material.dart';
import 'base/bottom_nav_bar.dart';
import 'base/utils/app_routes.dart';

void main() {
  runApp(const MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        AppRoutes.homePage:(context)=> const BottomNavBar(),
        AppRoutes.allTickets:(context)=> const AllTickets(),
        AppRoutes.allHotels:(context)=> const AllHotels(),

      },
    );
  }
}



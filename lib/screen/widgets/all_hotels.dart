import 'package:air_lines_ticket_app/base/utils/all_json.dart';
import 'package:air_lines_ticket_app/screen/widgets/hotel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AllHotels extends StatelessWidget {

  const AllHotels({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('All Hotels')),
      ),
      body: ListView(
        children: [
          SingleChildScrollView(
            child: Column(
              children: hotelList
                  .map((hotel) =>
                  Container(
                      margin: const EdgeInsets.only(bottom: 20),
                      child: Hotel(hotel: hotel,wholeScreen: true,)))
                  .toList(),
            ),
          )
        ],
      ),
    );
  }
}


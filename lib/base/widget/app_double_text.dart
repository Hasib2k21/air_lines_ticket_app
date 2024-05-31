import 'package:air_lines_ticket_app/base/res/styles/app_styles.dart';
import 'package:air_lines_ticket_app/base/utils/app_routes.dart';
import 'package:air_lines_ticket_app/screen/all_tickets.dart';
import 'package:flutter/material.dart';

class AppDoubleText extends StatelessWidget {
  final String bigText;
  final String smallText;
  final VoidCallback func;

  const AppDoubleText(
      {super.key, required this.bigText, required this.smallText, required this.func});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          bigText,
          style: AppStyles.headLineStyle2,
        ),
        InkWell(
          onTap: func,
          child: Text(
            smallText,
            style: AppStyles.textStyle.copyWith(
              color: AppStyles.primaryColor

            ),
          ),
        )
      ],
    );
  }
}

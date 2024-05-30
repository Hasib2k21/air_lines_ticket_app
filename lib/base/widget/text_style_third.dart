import 'package:flutter/material.dart';

import '../res/styles/app_styles.dart';

class TextStyleThird extends StatelessWidget {
  final String text;
  const TextStyleThird({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: AppStyles.headLineStyle3
          .copyWith(color: Colors.white),
    );
  }
}

class TextStyleFourth extends StatelessWidget {
  final String text;
  final TextAlign align;
  const TextStyleFourth({super.key, required this.text, this.align=TextAlign.start});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: align,
      style: AppStyles.headLineStyle4
          .copyWith(color: Colors.white),
    );
  }
}

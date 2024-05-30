import 'package:air_lines_ticket_app/base/widget/text_style_third.dart';
import 'package:flutter/cupertino.dart';

class AppColumTextLayout extends StatelessWidget {
  final String topText;
  final String bottomText;
  final CrossAxisAlignment alignment;
  const AppColumTextLayout({super.key, required this.topText, required this.bottomText, required this.alignment});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        TextStyleThird(text: topText,),
        const SizedBox(height: 5,),
        TextStyleFourth(text: bottomText)
      ],
    );
  }
}

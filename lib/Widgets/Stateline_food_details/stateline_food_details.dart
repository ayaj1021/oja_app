import 'package:flutter/material.dart';
import 'package:oja_app/App_styles/app_styles.dart';

class StatelineFoodDetails extends StatelessWidget {
  final String quantityText;
  final String priceText;
  const StatelineFoodDetails({
    Key? key,
    required this.quantityText,
    required this.priceText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          quantityText,
          style: Styles.headLineStyle3
              .copyWith(color: const Color.fromRGBO(153, 152, 153, 1)),
        ),
        Text(
          priceText,
          style: Styles.headLineStyle3.copyWith(color: Styles.mainTextColor),
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:oja_app/App_styles/app_styles.dart';

import 'package:oja_app/Widgets/Stateline_food_details/stateline_food_details.dart';

class EachFoodDetails extends StatelessWidget {
  final String foodName;
  final String locationText;
  const EachFoodDetails({
    Key? key,
    required this.foodName, required this.locationText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            CircleAvatar(
              radius: 15,
              backgroundColor: Colors.blue.shade300,
              child: const Icon(
                Icons.storefront_sharp,
                color: Colors.white,
                size: 15,
              ),
            ),
            const SizedBox(width: 20),
            Text(locationText,
                style: Styles.headLineStyle3.copyWith(
                  color: Styles.mainTextColor,
                )),
            const SizedBox(width: 170),
            const Icon(Icons.add)
          ],
        ),
        const SizedBox(height: 20),
        //Food price details
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              foodName,
              style: Styles.headLineStyle6,
            ),
            Text(
              'Current price',
              style: Styles.smallText,
            )
          ],
        ),
        //
        const SizedBox(height: 10),
        const StatelineFoodDetails(
          quantityText: '1 bag',
          priceText: '#15,000',
        ),
        const SizedBox(height: 10),
        const StatelineFoodDetails(
          quantityText: '1 kongo',
          priceText: '#900',
        ),
        const SizedBox(height: 10),
        const StatelineFoodDetails(
          quantityText: '1 cup',
          priceText: '#150',
        ),
      ],
    );
  }
}

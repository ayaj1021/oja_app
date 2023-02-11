import 'package:oja_app/App_styles/app_styles.dart';
import 'package:flutter/material.dart';

class ItemsListContainer extends StatelessWidget {
  final String itemText;
  final String unitText;
  final String priceText;
  final Color containerColor;
  final Color textColor;
  const ItemsListContainer(
      {Key? key,
      required this.itemText,
      required this.unitText,
      required this.priceText,
      this.containerColor = Colors.grey,
      this.textColor = Colors.black})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      height: 36,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(color: containerColor),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            itemText,
            style: Styles.headLineStyle3.copyWith(color: textColor),
          ),
          Row(
            children: [
              Text(
                unitText,
                style: Styles.headLineStyle3.copyWith(color: textColor),
              ),
              const SizedBox(width: 40),
              Text(
                priceText,
                style: Styles.headLineStyle3.copyWith(color: textColor),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

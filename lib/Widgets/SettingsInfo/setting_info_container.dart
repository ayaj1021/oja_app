import 'package:flutter/material.dart';
import 'package:oja_app/App_styles/app_styles.dart';

class SettingsInfo extends StatelessWidget {
  final IconData iconData;
  final String mainText;
  final String subText;

  const SettingsInfo({
    Key? key,
    required this.iconData,
    required this.mainText,
    required this.subText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 38,
          width: 38,
          decoration: BoxDecoration(
              color: Styles.primaryColor,
              borderRadius: BorderRadius.circular(10)),
          child: Icon(
            iconData,
            color: Colors.white,
          ),
        ),
        const SizedBox(width: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              mainText,
              style: Styles.headLineStyle6,
            ),
            Text(
              subText,
              style:
                  Styles.headLineStyle3.copyWith(color: Colors.grey.shade400),
            ),
          ],
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:oja_app/App_styles/app_styles.dart';

class NotificationContent extends StatelessWidget {
  final String letterText;
  final String mainText;
  final String timeText;
  final Color avatarColor;

  const NotificationContent({
    Key? key,
    required this.letterText,
    required this.mainText,
    required this.timeText,
    required this.avatarColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleAvatar(
              radius: 25,
              backgroundColor: avatarColor,
              child: Text(
                letterText,
                style:
                    Styles.headLineStyle1.copyWith(color: Styles.subTextColor),
              ),
            ),
            const SizedBox(width: 10),
            Text(
              mainText,
              style:
                  Styles.headLineStyle3.copyWith(color: Styles.mainTextColor),
            ),
          ],
        ),
        Text(
          timeText,
          style: const TextStyle(fontSize: 8, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}

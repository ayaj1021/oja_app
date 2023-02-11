import 'package:flutter/material.dart';
import 'package:oja_app/App_styles/app_styles.dart';


class SubLocationContainer extends StatelessWidget {
  final String text;
  final Color avatarColor;
  final Color? iconColor;
  final IconData iconData;
  const SubLocationContainer({
    Key? key,
    required this.text,
    required this.avatarColor,
    this.iconColor = Colors.white,
    required this.iconData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 176,
      width: 162,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12), color: Colors.blue.shade50),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 15,
            backgroundColor: avatarColor,
            child: Icon(iconData, color: iconColor),
          ),
          const SizedBox(height: 20),
          Text(
            text,
            style: Styles.headLineStyle6,
          )
        ],
      ),
    );
  }
}

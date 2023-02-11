import 'package:flutter/material.dart';
import 'package:oja_app/App_styles/app_styles.dart';


class HomeSublocationContainer extends StatelessWidget {
  final String text;
  final IconData iconData;
  const HomeSublocationContainer({
    Key? key,
    required this.text,
    required this.iconData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 157,
      decoration: BoxDecoration(
          color: Colors.purple.shade100,
          borderRadius: BorderRadius.circular(9)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 15,
            backgroundColor: Colors.grey.shade100,
            child: Icon(iconData, color: Styles.mainTextColor),
          ),
          const SizedBox(width: 10),
          Text(
            text,
            style: Styles.headLineStyle6,
          )
        ],
      ),
    );
  }
}

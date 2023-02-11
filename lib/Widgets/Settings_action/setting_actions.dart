import 'package:flutter/material.dart';
import 'package:oja_app/App_styles/app_styles.dart';

class SettingsAction extends StatelessWidget {
  final String text;
  final IconData? iconData;
  const SettingsAction({Key? key, required this.text, this.iconData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      height: 60,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12), color: Colors.grey.shade300),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: Styles.headLineStyle4,
          ),
           Icon(iconData)
        ],
      ),
    );
  }
}

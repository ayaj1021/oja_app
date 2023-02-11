import 'package:flutter/material.dart';
import 'package:oja_app/App_styles/app_styles.dart';


class ButtonContainer extends StatelessWidget {
  final String text;
  final Color? containerColor;
  const ButtonContainer({
    Key? key,
    required this.text,
    this.containerColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      width: 250,
      decoration: BoxDecoration(
          color: containerColor, borderRadius: BorderRadius.circular(40)),
      child: Center(
        child: Text(
          text,
          style: Styles.headLineStyle3,
        ),
      ),
    );
  }
}

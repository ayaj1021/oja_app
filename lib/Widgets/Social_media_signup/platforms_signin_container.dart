import 'package:flutter/material.dart';
import 'package:oja_app/App_styles/app_styles.dart';

class PlatformsSigninContainer extends StatelessWidget {
  final String text;
  final String imageData;
  const PlatformsSigninContainer({
    Key? key,
    required this.text,
    required this.imageData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 40, right: 80),
      height: 56,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          border: Border.all(color: Styles.mainTextColor)),
      child: Row(
        children: [
          Image(
            image: AssetImage(imageData),
            height: 20,
          ),
          const SizedBox(width: 40),
          Text(
            text,
            style: Styles.headLineStyle4,
          )
        ],
      ),
    );
  }
}

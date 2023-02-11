import 'package:flutter/material.dart';
import 'package:oja_app/App_styles/app_styles.dart';

class PasswordLoginSection extends StatelessWidget {
  final String text;
  const PasswordLoginSection({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: Styles.headLineStyle4,
        ),
        const SizedBox(height: 10),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          height: 56,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              border: Border.all(color: Colors.grey.shade300)),
          child: const TextField(
            obscureText: true,
            decoration: InputDecoration(
                border: InputBorder.none,
                prefixIcon: Icon(Icons.lock_outline_rounded),
                hintText: 'minimum of 6 characters',
                suffixIcon: Icon(Icons.visibility_outlined)),
          ),
        )
      ],
    );
  }
}

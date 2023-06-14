import 'package:flutter/material.dart';
import 'package:oja_app/App_styles/app_styles.dart';

class SignupLoginSection extends StatelessWidget {
const  SignupLoginSection({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final TextEditingController controller;
 // final String _message = '';

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Email address',
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
          child: TextField(
            controller: controller,
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(
              border: InputBorder.none,
              prefixIcon: Icon(Icons.mail_outline_rounded),
              hintText: 'example@gmail.com',
            ),
          ),
        ),
      ],
    );
  }
}

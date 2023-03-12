import 'package:flutter/material.dart';
import 'package:oja_app/App_styles/app_styles.dart';

class K_textFormField extends StatelessWidget {
  const K_textFormField({
    super.key,
    required this.textController,
    required this.label,
    required this.hintText,
  });
  final String label;
  final String hintText;

  final TextEditingController textController;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: Styles.headLineStyle4,
        ),
        const SizedBox(height: 10),
        Container(
          // padding: const EdgeInsets.symmetric(horizontal: 10),
          // height: 56,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
              // borderRadius: BorderRadius.circular(40),
              // border: Border.all(color: Colors.grey.shade300),
              ),
          child: TextFormField(
            controller: textController,
            keyboardType: TextInputType.emailAddress,
            decoration:  InputDecoration(
              border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(40))),
              prefixIcon: const Icon(Icons.mail_outline_rounded),
              hintText: hintText,
            ),
            validator: ((value) {
              if (value!.isEmpty) {
                return "Email can't be empty";
              }
              return null;
            }),
          ),
        ),
      ],
    );
  }
}

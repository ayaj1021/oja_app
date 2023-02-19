import 'package:flutter/material.dart';
import 'package:oja_app/App_styles/app_styles.dart';

class PasswordLoginSection extends StatefulWidget {
  final String text;
  const PasswordLoginSection({
    Key? key,
    required this.text,
   required this.controller,
  }) : super(key: key);

  final TextEditingController controller;

  @override
  State<PasswordLoginSection> createState() => _PasswordLoginSectionState();
}

class _PasswordLoginSectionState extends State<PasswordLoginSection> {
  @override
  Widget build(BuildContext context) {
    var obscureText = true;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.text,
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
            obscureText: obscureText,
            // controller: _controller,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
                border: InputBorder.none,
                prefixIcon: const Icon(Icons.lock_outline_rounded),
                hintText: 'minimum of 6 characters',
                suffixIcon: GestureDetector(
                  onTap: () {
                    setState(() {
                      obscureText = !obscureText;
                    });
                  },
                  child: obscureText ? const Icon(
                    Icons.visibility_off_outlined,
                    color: Colors.grey,
                  ): const Icon(
                            Icons.visibility_outlined,
                            color: Colors.grey,
                          )
                )),
          ),
        )
      ],
    );
  }
}

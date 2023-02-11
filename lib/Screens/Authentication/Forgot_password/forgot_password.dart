import 'package:flutter/material.dart';
import 'package:oja_app/App_styles/app_styles.dart';
import 'package:oja_app/Screens/Authentication/Forgot_password/reset_password.dart';
import 'package:oja_app/Widgets/Button_containers/long_button_container.dart';
import 'package:oja_app/Widgets/Login_section_widgets/email_login.dart';


class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                  onPressed: (() {}),
                  icon: const Icon(Icons.arrow_back_ios_new_rounded),
                ),
                const SizedBox(height: 30),
                Text(
                  'Forgot password?',
                  style: Styles.headLineStyle1,
                ),
                const SizedBox(height: 10),
                Text(
                  'Don\'t worry! it happens. A verification will be sent to the\nemail address associated with your account',
                  style: Styles.headLineStyle3
                      .copyWith(color: Styles.mainTextColor),
                ),
                const SizedBox(height: 30),
                const EmailLoginSection(),
                const SizedBox(height: 350),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ResetPassword()));
                  },
                  child: LongButtonContainer(
                    text: 'Enter',
                    containerColor: Styles.mainTextColor,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

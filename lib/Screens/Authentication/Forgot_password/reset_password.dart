import 'package:flutter/material.dart';
import 'package:oja_app/App_styles/app_styles.dart';
import 'package:oja_app/Screens/Authentication/login_screen.dart';
import 'package:oja_app/Widgets/Button_containers/long_button_container.dart';
import 'package:oja_app/Widgets/Login_section_widgets/password_login.dart';


class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

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
                  'Reset password',
                  style: Styles.headLineStyle1,
                ),
                const SizedBox(height: 10),
                Text(
                  'You can now create a new password but make sure to\nsave it this time 😀',
                  style: Styles.headLineStyle3
                      .copyWith(color: Styles.mainTextColor),
                ),
                const SizedBox(height: 30),
                const PasswordLoginSection(text: 'Old password'),
                const SizedBox(height: 30),
                const PasswordLoginSection(text: 'New password'),
                const SizedBox(height: 240),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginScreen()));
                  },
                  child: LongButtonContainer(
                    text: 'Reset',
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

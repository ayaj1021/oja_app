import 'package:flutter/material.dart';
import 'package:oja_app/App_styles/app_styles.dart';
import 'package:oja_app/Screens/Authentication/Forgot_password/forgot_password.dart';
import 'package:oja_app/Screens/Bottom_navigation_bar/bottom_nav_bar.dart';
import 'package:oja_app/Screens/onboarding_screen.dart';
import 'package:oja_app/Widgets/Button_containers/long_button_container.dart';
import 'package:oja_app/Widgets/Login_section_widgets/email_login.dart';
import 'package:oja_app/Widgets/Login_section_widgets/password_login.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const OnboardingScreen()));
                  },
                  child: const Icon(
                    Icons.arrow_back_ios_new_outlined,
                    size: 20,
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  'Welcome back!',
                  style: Styles.headLineStyle1,
                ),
                const SizedBox(height: 20),
                Text(
                  'Your favorite market app has missed you 😀',
                  style: Styles.headLineStyle3
                      .copyWith(color: Styles.mainTextColor),
                ),
                const SizedBox(height: 40),
                const EmailLoginSection(),
                const SizedBox(height: 30),
                const PasswordLoginSection(text: 'Password'),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: (() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ForgotPassword()));
                      }),
                      child: Text(
                        'Forgot password',
                        style: Styles.headLineStyle3
                            .copyWith(color: Styles.primaryColor),
                      ),
                    ),
                  ],
                ),
                //Login Button
                const SizedBox(height: 120),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const BottomNavBar()));
                  },
                  child: LongButtonContainer(
                    text: 'Login',
                    containerColor: Styles.mainTextColor,
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TextButton(
                        onPressed: (() {}),
                        child: Row(
                          children: [
                            Text(
                              'Don\'t have an account?',
                              style: Styles.headLineStyle6
                                  .copyWith(color: Styles.primaryColor),
                            ),
                            const SizedBox(width: 5),
                            Text(
                              'Sign up',
                              style: Styles.headLineStyle7
                                  .copyWith(color: Styles.primaryColor),
                            )
                          ],
                        )),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

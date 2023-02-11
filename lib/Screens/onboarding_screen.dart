import 'package:flutter/material.dart';
import 'package:oja_app/App_styles/app_styles.dart';
import 'package:oja_app/Screens/Authentication/Create_account/accounts_signup.dart';
import 'package:oja_app/Screens/Authentication/Create_account/stepper_widget.dart';
import 'package:oja_app/Screens/Authentication/login_screen.dart';
import 'package:oja_app/Widgets/Button_containers/button_container.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Orientation orientation = MediaQuery.of(context).orientation;
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Image(
                  image: AssetImage('images/onboarding.png'),
                ),
                const SizedBox(height: 30),
                Text(
                  '    Discover market\nrecommended spots\n        near you.',
                  style: Styles.headLineStyle1,
                ),
                const SizedBox(height: 30),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AccountsSignup()));
                  },
                  child: ButtonContainer(
                    text: 'Create an account',
                    containerColor: Styles.primaryColor,
                  ),
                ),
                const SizedBox(height: 10),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginScreen()));
                  },
                  child: ButtonContainer(
                    text: 'Login',
                    containerColor: Styles.mainTextColor,
                  ),
                ),
                const SizedBox(height: 30),
                Text(
                  'By tapping Create an account and using oja, you are to our\nTerms of use and Privacy statement',
                  style: Styles.smallText,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

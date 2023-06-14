import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:oja_app/App_styles/app_styles.dart';
import 'package:oja_app/Screens/Authentication/Create_account/accounts_signup.dart';
import 'package:oja_app/Screens/Authentication/login_screen.dart';
import 'package:oja_app/Widgets/Button_containers/button_container.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
   // Orientation orientation = MediaQuery.of(context).orientation;
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
                SizedBox(
                  height: 95,
                  child: AnimatedTextKit(
                   
                    pause: const Duration(milliseconds: 2000),
                    repeatForever: true,
                    animatedTexts: [
                      TyperAnimatedText(
                        '    Discover market\nrecommended spots\n          near you.',
                        textStyle: Styles.headLineStyle1,
                      ),
                      TyperAnimatedText(
                        '    Analyse and prepare a\n           valid budget.',
                        textStyle: Styles.headLineStyle1,
                      ),
                      TyperAnimatedText(
                        '     Track and monitor\n your market expenses.',
                        textStyle: Styles.headLineStyle1,
                      ),
                    ],
                  ),
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
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const LoginScreen()));
                  },
                  child: ButtonContainer(
                    text: 'Login',
                    containerColor: Styles.mainTextColor,
                  ),
                ),
                const SizedBox(height: 30),
                RichText(
                  textAlign: TextAlign.center,
                  softWrap: true,
                  text: TextSpan(
                      text:
                          'By tapping Create an account and using oja, you are to our\n ',
                      style: Styles.smallText,
                      children: [
                        TextSpan(
                            text: 'Terms of use',
                            style: Styles.smallText
                                .copyWith(fontWeight: FontWeight.bold)),
                        TextSpan(
                          text: ' and ',
                          style: Styles.smallText,
                        ),
                        TextSpan(
                            text: 'Privacy statement',
                            //style: TextStyle(fontWeight: FontWeight.bold),
                            style: Styles.smallText
                                .copyWith(fontWeight: FontWeight.bold)),
                      ]),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}


//'By tapping Create an account and using oja, you are to our\nTerms of use and Privacy statement',
                  //style: Styles.smallText,
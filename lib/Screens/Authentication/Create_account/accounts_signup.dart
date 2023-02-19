import 'package:flutter/material.dart';
import 'package:oja_app/App_styles/app_styles.dart';
import 'package:oja_app/Screens/Authentication/Choose_username/choose_username.dart';
import 'package:oja_app/Screens/Authentication/login_screen.dart';
import 'package:oja_app/Screens/onboarding_screen.dart';

import 'package:oja_app/Widgets/Button_containers/long_button_container.dart';
import 'package:oja_app/Widgets/Social_media_signup/platforms_signin_container.dart';

class AccountsSignup extends StatefulWidget {
  const AccountsSignup({super.key});

  @override
  State<AccountsSignup> createState() => _AccountsSignupState();
}

class _AccountsSignupState extends State<AccountsSignup> {
  @override
  Widget build(BuildContext context) {
    Color activatedColor = Colors.orange;
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
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
                      size: 15,
                    )),
                const SizedBox(height: 20),
                const ProgressBarContainer(),

                const SizedBox(height: 20),
                Text(
                  'Sign up to start your oja\nexperience.',
                  style: Styles.headLineStyle1,
                ),
                const SizedBox(height: 20),
                Text(
                  'By proceeding, you agree to our Terms of use and confirm\nyou have read our Privacy Statement',
                  style: Styles.headLineStyle3
                      .copyWith(color: Styles.mainTextColor),
                ),
                const SizedBox(height: 30),
                //Containers with sign up options
                const PlatformsSigninContainer(
                  imageData: 'images/apple.png',
                  text: 'Continue with Apple',
                ),
                const SizedBox(height: 20),
                const PlatformsSigninContainer(
                  imageData: 'images/facebook.png',
                  text: 'Continue with Facebook',
                ),
                const SizedBox(height: 20),
                const PlatformsSigninContainer(
                  imageData: 'images/Google.png',
                  text: 'Continue with Google',
                ),
                const SizedBox(height: 20),
                const PlatformsSigninContainer(
                  imageData: 'images/email.png',
                  text: 'Continue with Email',
                ),
                const SizedBox(height: 30),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ChooseUsername()));
                  },
                  child: LongButtonContainer(
                    text: 'Next',
                    containerColor: Styles.primaryColor,
                  ),
                ),
                const SizedBox(height: 30),
                Center(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>  LoginScreen()));
                    },
                    child: Text(
                      'Already have an account? Log in',
                      style: Styles.headLineStyle7,
                    ),
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

Widget roundContainer() {
  return Container(
    decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.orange),
  );
}

class ProgressBarContainer extends StatelessWidget {
  final Color defaultColor;
  final Color secondColor;
  const ProgressBarContainer(
      {Key? key,
      this.defaultColor = const Color.fromRGBO(194, 194, 198, 1),
      this.secondColor = Colors.deepOrange})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 10,
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.grey),
                color: Styles.primaryColor),
          ),
          Container(
            height: 5,
            width: 82,
            decoration:
                const BoxDecoration(color: Color.fromRGBO(194, 194, 198, 1)),
          ),
          Container(
            height: 10,
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.grey),
                color: Styles.primaryColor),
          ),
          Container(
            height: 5,
            width: 82,
            decoration:
                const BoxDecoration(color: Color.fromRGBO(194, 194, 198, 1)),
          ),
          Container(
            height: 10,
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.grey),
                color: Styles.primaryColor),
          ),
          Container(
            height: 5,
            width: 82,
            decoration:
                const BoxDecoration(color: Color.fromRGBO(194, 194, 198, 1)),
          ),
          Container(
            height: 10,
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.grey),
                color: Styles.primaryColor),
          ),
        ],
      ),
    );
  }
}

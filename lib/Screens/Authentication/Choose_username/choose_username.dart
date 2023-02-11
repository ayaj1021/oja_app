import 'package:flutter/material.dart';
import 'package:oja_app/App_styles/app_styles.dart';
import 'package:oja_app/Screens/Authentication/Create_account/accounts_signup.dart';
import 'package:oja_app/Screens/Authentication/Create_password/create_password.dart';
import 'package:oja_app/Widgets/Button_containers/long_button_container.dart';

class ChooseUsername extends StatelessWidget {
  const ChooseUsername({super.key});

  @override
  Widget build(BuildContext context) {
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
                              builder: (context) => const AccountsSignup()));
                    },
                    child: const Icon(Icons.arrow_back_ios_new_outlined)),
                const SizedBox(height: 20),
                Text(
                  'Choose a username',
                  style: Styles.headLineStyle1,
                ),
                const SizedBox(height: 50),
                Text(
                  'Username',
                  style: Styles.headLineStyle4,
                ),
                const SizedBox(height: 10),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  height: 56,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      border: Border.all(color: Colors.grey.shade300)),
                  child: const TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: Icon(Icons.person_outlined),
                      hintText: 'What should we call you?',
                    ),
                  ),
                ),
                const SizedBox(height: 350),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const CreatePassword()));
                  },
                  child: LongButtonContainer(
                    text: 'Next',
                    containerColor: Styles.primaryColor,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

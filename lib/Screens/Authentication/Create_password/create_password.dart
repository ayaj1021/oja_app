import 'package:flutter/material.dart';
import 'package:oja_app/App_styles/app_styles.dart';
import 'package:oja_app/Screens/Authentication/Choose_username/choose_username.dart';
import 'package:oja_app/Screens/Authentication/Mobile_number/mobile_number.dart';
import 'package:oja_app/Widgets/Button_containers/long_button_container.dart';

class CreatePassword extends StatelessWidget {
  const CreatePassword({super.key});

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
                              builder: (context) => const ChooseUsername()));
                    },
                    child: const Icon(Icons.arrow_back_ios_new_outlined)),
                const SizedBox(height: 20),
                Text(
                  'Create a password',
                  style: Styles.headLineStyle1,
                ),
                const SizedBox(height: 50),
                Text(
                  'Password',
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
                    obscureText: true,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.lock_outline),
                        hintText: 'Minimum of 6 characters',
                        suffixIcon: Icon(Icons.visibility_outlined)),
                  ),
                ),
                const SizedBox(height: 350),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MobileNumber()));
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

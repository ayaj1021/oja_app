import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:oja_app/App_styles/app_styles.dart';

import 'package:oja_app/Screens/Authentication/Create_password/create_password.dart';
import 'package:oja_app/Screens/Authentication/Enter_location/enter_location.dart';
import 'package:oja_app/Widgets/Button_containers/long_button_container.dart';

class MobileNumber extends StatelessWidget {
  const MobileNumber({super.key});

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
                              builder: (context) => const CreatePassword()));
                    },
                    child: const Icon(Icons.arrow_back_ios_new_outlined)),
                const SizedBox(height: 20),
                Text(
                  'Add your mobile number',
                  style: Styles.headLineStyle1,
                ),
                const SizedBox(height: 50),
                Text(
                  'Mobile number',
                  style: Styles.headLineStyle4,
                ),
                const SizedBox(height: 20),
                Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    height: 56,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        border: Border.all(color: Colors.grey.shade300)),
                    child: IntlPhoneField(
                      keyboardType: TextInputType.phone,
                      // dropdownIcon: const Icon(Icons.phone),
                      decoration: const InputDecoration(
                        hintText: 'Your 11-digit number',
                        border: InputBorder.none,
                      ),
                      initialCountryCode: 'NG',
                      onChanged: (phone) {
                        debugPrint(phone.completeNumber);
                      },
                    )),
                const SizedBox(height: 350),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const EnterLocation()));
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

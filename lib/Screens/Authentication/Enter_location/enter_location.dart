import 'package:flutter/material.dart';
import 'package:oja_app/App_styles/app_styles.dart';

import 'package:oja_app/Screens/Authentication/Mobile_number/mobile_number.dart';
import 'package:oja_app/Screens/Pages/Home_screen/home_screen.dart';

import 'package:oja_app/Widgets/Button_containers/long_button_container.dart';

class EnterLocation extends StatefulWidget {
  const EnterLocation({super.key});

  @override
  State<EnterLocation> createState() => _EnterLocationState();
}

class _EnterLocationState extends State<EnterLocation> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
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
                              builder: (context) => const MobileNumber()));
                    },
                    child: const Icon(Icons.arrow_back_ios_new_outlined)),
                const SizedBox(height: 20),
                Text(
                  'Discover market recommended spots near you',
                  style: Styles.headLineStyle1,
                ),
                const SizedBox(height: 350),
                GestureDetector(
                  onTap: () {
                    scaffoldKey.currentState?.showBottomSheet((context) {
                      return Container(
                        height: 400,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(40),
                                topRight: Radius.circular(40))),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Text(
                                  'You have successfuly created\n           your oja account',
                                  style: Styles.headLineStyle6,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const HomeScreen()));
                                  },
                                  child: LongButtonContainer(
                                      text: 'Continue',
                                      containerColor: Styles.primaryColor),
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    });
                  },
                  child: LongButtonContainer(
                    text: 'Allow location data',
                    containerColor: Styles.primaryColor,
                  ),
                ),
                const SizedBox(height: 20),
                Center(
                  child: GestureDetector(
                    onTap: () {
                      scaffoldKey.currentState?.showBottomSheet((context) {
                        return Container(
                          height: 400,
                          decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(40),
                                  topRight: Radius.circular(40))),
                          child: Column(
                            children: [
                              Text(
                                'You have successfuly created\n           your oja account',
                                style: Styles.headLineStyle6,
                              ),
                              LongButtonContainer(
                                  text: 'Continue',
                                  containerColor: Styles.primaryColor)
                            ],
                          ),
                        );
                      });
                    },
                    child: Text(
                      'Not now',
                      style: Styles.headLineStyle7,
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

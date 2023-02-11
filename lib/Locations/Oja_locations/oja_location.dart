import 'package:flutter/material.dart';
import 'package:oja_app/App_styles/app_styles.dart';
import 'package:oja_app/Locations/Location_specific_details/redemption_details.dart';
import 'package:oja_app/Locations/Location_specific_details/stateline_details.dart';
import 'package:oja_app/Screens/Authentication/Mobile_number/mobile_number.dart';
import 'package:oja_app/Screens/Bottom_navigation_bar/bottom_nav_bar.dart';
import 'package:oja_app/Widgets/Sublocations/sublocation_container.dart';

class OjaLocation extends StatelessWidget {
  const OjaLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            shape: BoxShape.circle),
                        child: IconButton(
                            onPressed: (() {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const BottomNavBar()));
                            }),
                            icon:
                                const Icon(Icons.arrow_back_ios_new_rounded))),
                    const SizedBox(width: 105),
                    Text(
                      'Oja',
                      style: Styles.headLineStyle1,
                    )
                  ],
                ),
                const SizedBox(height: 60),
                //Sublocation containers
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const StateLineLocationDetails()));
                          },
                          child: SubLocationContainer(
                              iconData: Icons.storefront_sharp,
                              text: 'Stateline',
                              avatarColor: Colors.blue.shade300),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const RedemptionLocationDetails()));
                          },
                          child: SubLocationContainer(
                              iconData: Icons.storefront_sharp,
                              text: 'Redemption',
                              avatarColor: Colors.green.shade300),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SubLocationContainer(
                            iconData: Icons.storefront_sharp,
                            text: 'Apatapiti',
                            avatarColor: Colors.orange.shade300),
                        SubLocationContainer(
                            iconData: Icons.storefront_sharp,
                            text: 'Embassy',
                            avatarColor: Colors.blue.shade300),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SubLocationContainer(
                            iconData: Icons.storefront_sharp,
                            text: 'Embassy',
                            avatarColor: Colors.red.shade300),
                      ],
                    ),
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

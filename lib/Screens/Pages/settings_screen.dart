import 'package:flutter/material.dart';

import 'package:oja_app/App_styles/app_styles.dart';
import 'package:oja_app/Widgets/Allow_push_notification/allow_push_notification.dart';

import 'package:oja_app/Widgets/SettingsInfo/setting_info_container.dart';
import 'package:oja_app/Widgets/Settings_action/setting_actions.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Settings',
                  style: Styles.headLineStyle1,
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        //Avatar container
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.blue.shade200,
                              borderRadius: BorderRadius.circular(10)),
                          child: const Image(
                            image: AssetImage('images/Avatar.png'),
                            height: 50,
                          ),
                        ),
                        const SizedBox(width: 20),
                        //Name and username
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Abiodun Adebambo',
                              style: Styles.headLineStyle6,
                            ),
                            Text(
                              '@kodingnyoung',
                              style: Styles.headLineStyle3
                                  .copyWith(color: Colors.grey.shade400),
                            ),
                          ],
                        ),
                      ],
                    ),
                    //QR code
                    Icon(
                      Icons.qr_code,
                      color: Styles.primaryColor,
                    )
                  ],
                ),
                //Setting Actions
                const SizedBox(height: 50),
                const SettingsInfo(
                  iconData: Icons.person_outline,
                  mainText: 'Profile',
                  subText: 'Edit and manage your profile details',
                ),
                const SizedBox(height: 30),
                const SettingsAction(
                    text: 'Edit profile',
                    iconData: Icons.arrow_forward_ios_outlined),
                const SizedBox(height: 30),
                const SettingsInfo(
                  iconData: Icons.security_rounded,
                  mainText: 'Privacy',
                  subText: 'Secure and change your account password',
                ),
                const SizedBox(height: 10),
                const SettingsAction(
                    text: 'Change your password',
                    iconData: Icons.arrow_forward_ios_outlined),
                const SizedBox(height: 5),
                const SettingsAction(
                    text: 'Two-step verification',
                    iconData: Icons.arrow_forward_ios_outlined),
                const SizedBox(height: 30),
                const SettingsInfo(
                  iconData: Icons.notifications_outlined,
                  mainText: 'Notifications',
                  subText: 'Manage your notifications',
                ),
                const SizedBox(height: 10),
                const AllowPushNotification(text: 'Allow push notifications'),
                const SizedBox(height: 30),
                const SettingsInfo(
                  iconData: Icons.brush_rounded,
                  mainText: 'Appearance',
                  subText: 'Control the look and feel of your app',
                ),
                const SizedBox(height: 20),
                const SettingsAction(text: 'Theme'),
                const SizedBox(height: 30),
                const SettingsInfo(
                  iconData: Icons.info_outline_rounded,
                  mainText: 'Help and Support',
                  subText: 'Secure and change your account password',
                ),
                const SizedBox(height: 30),
                const SettingsAction(
                    text: 'Contact us',
                    iconData: Icons.arrow_forward_ios_outlined),
                const SizedBox(height: 2),
                const SettingsAction(
                    text: 'FAQ', iconData: Icons.arrow_forward_ios_outlined),
                const SizedBox(height: 2),
                const SettingsAction(text: 'About Oja'),
                const SizedBox(height: 80),
                IconLongButtonContainer(
                  text: 'Logout',
                  containerColor: Styles.primaryColor,
                ),
                const SizedBox(height: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Image(image: AssetImage('images/linkedin.png'), height: 20),
                    Image(
                        image: AssetImage('images/instagram.png'), height: 20),
                    Image(image: AssetImage('images/twitter.png'), height: 20),
                  ],
                ),
                const SizedBox(height: 30),
                Center(
                  child: Text('Follow us',
                      style: Styles.headLineStyle3.copyWith(
                        color: Styles.mainTextColor,
                      )),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class IconLongButtonContainer extends StatelessWidget {
  final String text;
  final IconData? iconData;
  final Color? containerColor;
  const IconLongButtonContainer({
    Key? key,
    required this.text,
    this.containerColor,
    this.iconData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      height: 56,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: containerColor, borderRadius: BorderRadius.circular(40)),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.logout_outlined,
              color: Colors.white,
            ),
            const SizedBox(width: 20),
            Text(
              text,
              style: Styles.headLineStyle3,
            ),
          ],
        ),
      ),
    ));
  }
}

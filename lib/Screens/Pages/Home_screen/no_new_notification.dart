import 'package:flutter/material.dart';
import 'package:oja_app/App_styles/app_styles.dart';
import 'package:oja_app/Screens/Pages/Home_screen/notification_screen.dart';

class NoNotificationScreen extends StatelessWidget {
  const NoNotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    //Top notification
                    Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.black)),
                        child: IconButton(
                          onPressed: (() {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const NotificationScreen()));
                          }),
                          icon: const Icon(
                            Icons.arrow_back_ios_new_outlined,
                            size: 20,
                          ),
                        )),
                    const SizedBox(width: 80),
                    Text(
                      'Notification',
                      style: Styles.headLineStyle1,
                    )
                  ],
                ),
                const SizedBox(height: 100),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Image(
                      image: AssetImage('images/no-notification.png'),
                    ),
                    const SizedBox(height: 30),
                    Text(
                      'You have no new notifications',
                      style: Styles.headLineStyle6,
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

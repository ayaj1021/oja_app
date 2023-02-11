import 'package:flutter/material.dart';
import 'package:oja_app/App_styles/app_styles.dart';
import 'package:oja_app/Screens/Pages/Home_screen/home_screen.dart';
import 'package:oja_app/Screens/Pages/Home_screen/no_new_notification.dart';
import 'package:oja_app/Widgets/Notification_contents/notification_contents.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                                    builder: (context) => const HomeScreen()));
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
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                        onPressed: (() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const NoNotificationScreen()));
                        }),
                        child: Text(
                          'Mark all as read',
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              decoration: TextDecoration.underline,
                              color: Styles.primaryColor),
                        ))
                  ],
                ),
                const SizedBox(height: 30),
                NotificationContent(
                  letterText: 'T',
                  mainText:
                      'Today\'s market prices have changed, get\nthe latest update on the new prices',
                  timeText: '11:00am',
                  avatarColor: Colors.blue.shade400,
                ),
                const SizedBox(height: 20),
                NotificationContent(
                  letterText: 'R',
                  mainText:
                      'Rice is now being sold at a wholesale price\nof #500 per derica',
                  timeText: '11:00am',
                  avatarColor: Colors.orange.shade300,
                ),
                const SizedBox(height: 20),
                const NotificationContent(
                  letterText: 'G',
                  mainText: 'Garri at Southgate is now more expensive',
                  timeText: '11:00am',
                  avatarColor: Colors.green,
                ),
                const SizedBox(height: 20),
                const NotificationContent(
                  letterText: 'N',
                  mainText:
                      'New Yam Festival holds on the 2nd of\nJanuary through the 8th',
                  timeText: '11:00am',
                  avatarColor: Colors.red,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

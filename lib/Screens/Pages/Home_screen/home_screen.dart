import 'package:flutter/material.dart';
import 'package:oja_app/App_styles/app_styles.dart';
import 'package:oja_app/Locations/Oja_locations/northgate_location.dart';
import 'package:oja_app/Locations/Oja_locations/oja_location.dart';
import 'package:oja_app/Locations/Oja_locations/southgate_location.dart';
import 'package:oja_app/Screens/Pages/Home_screen/notification_screen.dart';
import 'package:oja_app/Widgets/Sublocations/home_sublocation_container.dart';
import 'package:oja_app/Widgets/Sublocations/sublocation_container.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return Scaffold(
          body: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 40),
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //Header section
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hi, Abiodun',
                            style: Styles.headLineStyle1,
                          ),
                          Text(
                            'Check your market price updates',
                            style: Styles.headLineStyle3
                                .copyWith(color: Styles.mainTextColor),
                          ),
                        ],
                      ),
                      IconButton(
                          onPressed: (() {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const NotificationScreen()));
                          }),
                          icon: const Icon(Icons.notifications_outlined))
                    ],
                  ),
                  const SizedBox(height: 40),
                  //Delivery boy container
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                    height: 120,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Colors.orange.shade200,
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Image(
                          image: AssetImage('images/Fooddeliveryboy.png'),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Rice (Nigerian)',
                              style: Styles.headLineStyle7,
                            ),
                            Text(
                              'Now selling at #850 per kongo',
                              style: Styles.headLineStyle3
                                  .copyWith(color: Styles.mainTextColor),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 80),
                  Text(
                    'Categories',
                    style: Styles.headLineStyle1,
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const OjaLocation()));
                        },
                        child: SubLocationContainer(
                          iconData: Icons.shopping_basket_outlined,
                          text: 'Oja',
                          avatarColor: Colors.grey.shade100,
                          iconColor: Styles.mainTextColor,
                        ),
                      ),
                      const SizedBox(width: 2),
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const SouthgateLocation()));
                            },
                            child: const HomeSublocationContainer(
                              text: 'South gate',
                              iconData: Icons.storefront_sharp,
                            ),
                          ),
                          const SizedBox(height: 10),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const NorthgateLocation()));
                            },
                            child: const HomeSublocationContainer(
                              text: 'North gate',
                              iconData: Icons.shopping_cart_outlined,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(height: 40),
                  Text(
                    'Events',
                    style: Styles.headLineStyle1,
                  ),
                  const SizedBox(height: 20),
                  Container(
                    height: 150,
                    width: 335,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.black54),
                    child: Center(
                      child: Text(
                        'Coming Soon',
                        style: Styles.headLineStyle1,
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}

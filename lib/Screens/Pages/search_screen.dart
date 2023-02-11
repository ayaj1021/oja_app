import 'package:flutter/material.dart';
import 'package:oja_app/App_styles/app_styles.dart';
import 'package:oja_app/Widgets/Sublocations/sublocation_container.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

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
                Text(
                  'Search',
                  style: Styles.headLineStyle1,
                ),
                const SizedBox(height: 40),
                Container(
                  padding: const EdgeInsets.all(10),
                  height: 56,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    border: Border.all(color: Colors.grey),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Search for food, price, location',
                        prefixIcon: Icon(
                          Icons.search_outlined,
                          color: Styles.primaryColor,
                        ),
                        suffixIcon: const Icon(Icons.sort_outlined)),
                  ),
                ),
                const SizedBox(height: 60),
                //Sublocation containers
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SubLocationContainer(
                            iconData: Icons.storefront_sharp,
                            text: 'Stateline',
                            avatarColor: Colors.blue.shade300),
                        SubLocationContainer(
                            iconData: Icons.storefront_sharp,
                            text: 'Redemption',
                            avatarColor: Colors.green.shade300),
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

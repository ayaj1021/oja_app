import 'package:flutter/material.dart';
import 'package:oja_app/App_styles/app_styles.dart';
import 'package:oja_app/Locations/Oja_locations/oja_location.dart';
import 'package:oja_app/Widgets/Each_food_details/each_food_details.dart';

class StateLineLocationDetails extends StatelessWidget {
  const StateLineLocationDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
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
                                          const OjaLocation()));
                            }),
                            icon:
                                const Icon(Icons.arrow_back_ios_new_rounded))),
                    const SizedBox(width: 100),
                    Text(
                      'Stateline',
                      style: Styles.headLineStyle9,
                    )
                  ],
                ),
                const SizedBox(height: 50),
                const EachFoodDetails(
                  locationText: 'Stateline',
                  foodName: 'Rice',
    
                ),

                //
                const SizedBox(height: 10),
                const Divider(
                  height: 40,
                  color: Color.fromRGBO(153, 153, 153, 1),
                  thickness: 1,
                ),
                const SizedBox(height: 10),
                //
                const EachFoodDetails(
                  locationText: 'Stateline',
                  
                  foodName: 'Beans',
   
                ),
                const SizedBox(height: 30),
                //
                const Divider(
                  height: 40,
                  color: Color.fromRGBO(153, 153, 153, 1),
                  thickness: 1,
                ),
                const EachFoodDetails(
                  locationText: 'Stateline',
                  foodName: 'Garri',
   
                ),

                //
                const SizedBox(height: 10),
                const Divider(
                  height: 40,
                  color: Color.fromRGBO(153, 153, 153, 1),
                  thickness: 1,
                ),
                const SizedBox(height: 20),
                //
                const EachFoodDetails(
                  locationText: 'Stateline',
                  foodName: 'Spaghetti',
                  
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

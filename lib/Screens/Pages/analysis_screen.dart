import 'package:flutter/material.dart';
import 'package:oja_app/App_styles/app_styles.dart';
import 'package:oja_app/Widgets/ItemsList_container/itemsList_container.dart';
import 'package:dotted_border/dotted_border.dart';

class AnalysisScreen extends StatelessWidget {
  const AnalysisScreen({super.key});

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
                  'Analysis',
                  style: Styles.headLineStyle1,
                ),
                const SizedBox(height: 50),
                ItemsListContainer(
                  itemText: 'Item',
                  unitText: 'Unit',
                  priceText: 'Price',
                  containerColor: Colors.grey,
                  textColor: Styles.subTextColor,
                ),
                const ItemsListContainer(
                  itemText: 'Rice',
                  unitText: '1kg',
                  priceText: '1500',
                  containerColor: Colors.white,
                ),
                ItemsListContainer(
                  itemText: 'Tomatoes',
                  unitText: '20pcs',
                  priceText: '400',
                  containerColor: Colors.grey.shade200,
                ),
                const ItemsListContainer(
                  itemText: 'Curry',
                  unitText: '3pcs',
                  priceText: '100',
                  containerColor: Colors.white,
                ),
                ItemsListContainer(
                  itemText: 'Beans',
                  unitText: '3kg',
                  priceText: '2850',
                  containerColor: Colors.grey.shade200,
                ),
                const ItemsListContainer(
                  itemText: 'Pepper',
                  unitText: '10pcs',
                  priceText: '250',
                  containerColor: Colors.white,
                ),
                ItemsListContainer(
                  itemText: 'Beans',
                  unitText: '3kg',
                  priceText: '2850',
                  containerColor: Colors.grey.shade200,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('SumTotal', style: Styles.headLineStyle6),
                      Text('11300', style: Styles.headLineStyle6)
                    ],
                  ),
                ),
                const SizedBox(height: 50),
                DottedBorder(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  radius: const Radius.circular(40),
                  borderType: BorderType.RRect,
                  color: Styles.primaryColor,
                  child: ClipRRect(
                    child: Center(
                      child: Text(
                        'Save as image',
                        style: Styles.headLineStyle6,
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

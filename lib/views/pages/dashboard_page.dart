// ignore_for_file: camel_case_types, must_be_immutable, prefer_const_constructors

import 'package:faith_pharm/views/pages/manage_categories_page.dart';
import 'package:faith_pharm/views/pages/manage_order_page.dart';
import 'package:faith_pharm/views/pages/manage_products_page.dart';
import 'package:faith_pharm/views/pages/manage_users_page.dart';
import 'package:faith_pharm/views/widgets/dashboard_widgets/card_container.dart';
import 'package:faith_pharm/views/widgets/dashboard_widgets/dash_cards.dart';
import 'package:flutter/material.dart';

class dashBoard extends StatelessWidget {
  dashBoard({super.key});
  var height, width;
  List image_data = [
    "assets/images_dashboard/manage_categories.jpg",
    "assets/images_dashboard/manage_orders.jpg",
    "assets/images_dashboard/manage_product.avif",
    "assets/images_dashboard/manage_users.jpg",
  ];
  List title_data = [
    "Categories",
    "Orders",
    "Products",
    "Users",
  ];
  // ignore: non_constant_identifier_names
  List action_data = [
    manageCategories(),
    manageOrders(),
    manageProducts(),
    manageUsers(),

  ];

  @override
  Widget build(BuildContext context) {
    
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: height,
        width: width,
        decoration: const BoxDecoration(
          color: Colors.indigo,
        ),
        child: Column(
          children: [
            card_container(height: height, width: width),
            Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                  color: Colors.white,
                ),
                height: height * .75,
                width: width,
                child: dash_card(
                  title_data: title_data,
                  image_data: image_data,
                  action_data: action_data,
                ))
          ],
        ),
      ),
    );
  }
}

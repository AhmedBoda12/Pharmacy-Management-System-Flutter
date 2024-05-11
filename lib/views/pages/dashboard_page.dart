import 'package:faith_pharm/views/pages/manage_categories_page.dart';
import 'package:faith_pharm/views/pages/manage_order_page.dart';
import 'package:faith_pharm/views/pages/manage_products_page.dart';
import 'package:faith_pharm/views/pages/manage_users_page.dart';
import 'package:faith_pharm/views/widgets/dashboard_widgets/dash_cards.dart';
import 'package:faith_pharm/views/widgets/dashboard_widgets/top_text.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DashBoardPage extends StatelessWidget {
  DashBoardPage({super.key});
  final List imageData = [
    "assets/images_dashboard/manage_categories.jpg",
    "assets/images_dashboard/manage_orders.jpg",
    "assets/images_dashboard/manage_product.png",
    "assets/images_dashboard/manage_users.jpg",
  ];
  final List titleData = [
    "Categories",
    "Orders",
    "Products",
    "Users",
  ];
  final List actionData = [
    const ManageCategoriesPage(),
    const ManageOrdersPage(),
    const ManageProductsPage(),
    const ManageUsersPage(),
  ];
  final format = DateFormat.yMd();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.primary,
        appBar: AppBar(
          title: Text(
            'Dashboard',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          centerTitle: true,
          backgroundColor: Theme.of(context).colorScheme.primary,
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
              color: Colors.white,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              TopTextDashboard(
                lastUpdate: format.format(DateTime.now()),
              ),
              const SizedBox(
                height: 10,
              ),
              DashCard(
                  titleData: titleData,
                  imageData: imageData,
                  actionData: actionData)
            ],
          ),
        ));
  }
}

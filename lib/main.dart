import 'package:faith_pharm/views/home/main_page.dart';
import 'package:faith_pharm/views/pages/all_products_page.dart';
import 'package:faith_pharm/views/pages/cart_page.dart';
import 'package:faith_pharm/views/pages/category_products_page.dart';
import 'package:faith_pharm/views/pages/checkout_page.dart';
import 'package:faith_pharm/views/pages/dashboard_page.dart';
import 'package:faith_pharm/views/pages/login_page.dart';
import 'package:faith_pharm/views/pages/product_page.dart';
import 'package:faith_pharm/views/pages/signup_page.dart';
import 'package:flutter/material.dart';
import 'package:faith_pharm/views/pages/edit_profile.dart';
import 'package:faith_pharm/views/pages/orders.dart';

void main() {
  runApp(const PharmacyApp());
}

class PharmacyApp extends StatelessWidget {
  const PharmacyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Faith Pharmacy',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
        textTheme: TextTheme(
          displayLarge: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 26,
              color: Theme.of(context).primaryColorDark),
          titleLarge: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22,
              color: Theme.of(context).colorScheme.background),
        ),
      ),
      home: const LoginPage(),
      routes: {
        LoginPage.routeName: (context) => const LoginPage(),
        SignupPage.routeName: (context) => const SignupPage(),
        MainPage.routeName: (context) => const MainPage(),
        AllProductsPage.routeName: (context) => const AllProductsPage(),
        ProductPage.routeName: (context) => const ProductPage(),

        UpdateProfileScreen.routeName: (context) => const UpdateProfileScreen(),
        OrderListItems.routeName: (context) => OrderListItems(),

        CartPage.routeName: (context) => const CartPage(),
        CheckoutPage.routeName: (context) => const CheckoutPage(),
        CategoryProducts.routeName: (context) => const CategoryProducts(),
        DashBoardPage.routeName: (context) => DashBoardPage(),

      },
    );
  }
}

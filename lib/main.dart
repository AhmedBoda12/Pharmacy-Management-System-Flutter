import 'package:faith_pharm/views/home/main_page.dart';
import 'package:faith_pharm/views/pages/all_products_page.dart';
import 'package:faith_pharm/views/pages/cart_page.dart';
import 'package:faith_pharm/views/pages/checkout_page.dart';
import 'package:faith_pharm/views/pages/product_page.dart';
import 'package:flutter/material.dart';

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
          bodyLarge: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22,
              color: Theme.of(context).colorScheme.onBackground),
          titleLarge: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22,
              color: Theme.of(context).colorScheme.background),
        ),
      ),
      home: const MainPage(),
      routes: {
        MainPage.routeName: (context) => const MainPage(),
        AllProductsPage.routeName: (context) => const AllProductsPage(),
        ProductPage.routeName: (context) => const ProductPage(),
        CartPage.routeName: (context) => const CartPage(),
        CheckoutPage.routeName: (context) => const CheckoutPage(),
      },
    );
  }
}

import 'package:faith_pharm/views/pages/category_page.dart';
import 'package:faith_pharm/views/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:stylish_bottom_bar/stylish_bottom_bar.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});
  static const String routeName = 'HomePage';
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int selected = 0;
  final controller = PageController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: StylishBottomBar(
        items: [
          BottomBarItem(
            icon: const Icon(
              Icons.house_outlined,
            ),
            selectedIcon: const Icon(Icons.house_rounded),
            selectedColor: Theme.of(context).primaryColor,
            title: const Text('Home'),
          ),
          BottomBarItem(
            icon: const Icon(Icons.category_outlined),
            selectedIcon: const Icon(Icons.category_rounded),
            selectedColor: Theme.of(context).primaryColor,
            title: const Text('Category'),
          ),
          BottomBarItem(
              icon: const Icon(Icons.shopping_cart_outlined),
              selectedIcon: const Icon(
                Icons.shopping_cart,
              ),
              selectedColor: Theme.of(context).primaryColor,
              title: const Text('Cart')),
          BottomBarItem(
              icon: const Icon(
                Icons.person_outline,
              ),
              selectedIcon: const Icon(
                Icons.person,
              ),
              selectedColor: Theme.of(context).primaryColor,
              title: const Text('Profile')),
        ],
        option: BubbleBarOptions(),
        currentIndex: selected,
        onTap: (index) {
          if (index == selected) return;
          controller.animateToPage(
            index,
            duration: const Duration(milliseconds: 300),
            curve: Curves.ease,
          );
          setState(() {
            selected = index;
          });
        },
      ),
      body: PageView(
        controller: controller,
        children: const [
          HomePage(),
          CategoryPage(),
          Center(child: Text('Cart')),
          Center(child: Text('Profile')),
        ],
      ),
    );
  }
}

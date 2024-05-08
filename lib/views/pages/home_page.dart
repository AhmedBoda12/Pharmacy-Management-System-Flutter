import 'package:faith_pharm/views/widgets/category_widgets/category_row.dart';
import 'package:faith_pharm/views/widgets/headline_row.dart';
import 'package:faith_pharm/views/widgets/home_page_widgets/home_page_stack.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 300,
              child: HomePageStack(),
            ),
            const SizedBox(
              height: 40,
            ),
            HeadlineRow(
              text: 'Exploar Categories',
            ),
            const SizedBox(
              height: 10,
            ),
            const CategoryRow()
          ],
        ),
      ),
    );
  }
}

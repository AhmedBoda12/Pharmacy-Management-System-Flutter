import 'dart:ui';

import 'package:faith_pharm/views/widgets/custom_search_bar.dart';
import 'package:faith_pharm/views/widgets/home_page_cover.dart';
import 'package:faith_pharm/views/widgets/welcome_container.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 300,
              child: Stack(
                clipBehavior: Clip.hardEdge,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: HomePageCover(),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: WelcomeContainer(),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: CustomSearchBar(hint: 'What are you looking for?'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

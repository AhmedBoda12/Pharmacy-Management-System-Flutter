import 'package:faith_pharm/views/widgets/custom_search_bar.dart';
import 'package:faith_pharm/views/widgets/manage_widgets.dart/category_card.dart';
import 'package:faith_pharm/views/widgets/manage_widgets.dart/floating_action.dart';
import 'package:flutter/material.dart';

class manageCategories extends StatelessWidget {
  const manageCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        actions: const [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: SizedBox(
                width: 300,
                child: CustomSearchBar(hint: "Which category do you search?")),
          ),
        ],
      ),
      floatingActionButton: float_action(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            category_card(category_name: "inti boitic", category_item_num: 10,),
            category_card(category_name: "inti boitic", category_item_num: 10,),
            category_card(category_name: "inti boitic", category_item_num: 10,),
            category_card(category_name: "inti boitic", category_item_num: 10,),
            category_card(category_name: "inti boitic", category_item_num: 10,),
            category_card(category_name: "inti boitic", category_item_num: 10,),
            category_card(category_name: "inti boitic", category_item_num: 10,),
            category_card(category_name: "inti boitic", category_item_num: 10,),
            category_card(category_name: "inti boitic", category_item_num: 10,),
            
          ],
        ),
      ),
    );
  }
}




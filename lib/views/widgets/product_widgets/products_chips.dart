import 'package:faith_pharm/services/category_services.dart';
import 'package:flutter/material.dart';

class AllProductsChips extends StatefulWidget {
  const AllProductsChips({super.key});

  @override
  State<AllProductsChips> createState() => _AllProductsChipsState();
}

class _AllProductsChipsState extends State<AllProductsChips> {
  int? value = 0;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8),
        child: FutureBuilder(
            future: CategoryServices().getAllCategories(),
            builder: (context, snapshot) {
              return Wrap(
                spacing: 5.0,
                children: List<Widget>.generate(
                  6,
                  (int index) {
                    return ChoiceChip(
                      selectedColor: Theme.of(context).primaryColor,
                      labelStyle: TextStyle(
                          color: value == index
                              ? Theme.of(context).colorScheme.onPrimary
                              : Theme.of(context).colorScheme.primary),
                      side: BorderSide.none,
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(20), // Make it round
                      ),
                      showCheckmark: false,
                      backgroundColor: Theme.of(context).secondaryHeaderColor,
                      label: Text('Item ${index + 1}'),
                      selected: value == index,
                      onSelected: (bool selected) {
                        setState(() {
                          value = selected ? index : 0;
                        });
                      },
                    );
                  },
                ).toList(),
              );
            }),
      ),
    );
  }
}

import 'package:faith_pharm/views/widgets/add_item_widgets/categories_drop_down.dart';
import 'package:faith_pharm/views/widgets/add_item_widgets/image_button.dart';
import 'package:faith_pharm/views/widgets/add_item_widgets/title_lable.dart';
import 'package:flutter/material.dart';

class FloatAction extends StatelessWidget {
  const FloatAction({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        showModalBottomSheet(
            context: context,
            builder: (BuildContext context) {
              return Padding(
                padding: const EdgeInsets.only(
                    top: 15, left: 15, right: 15, bottom: 15),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const TextTitle(titleText: "Title"),
                      const TextField(),
                      const TextTitle(titleText: "Size"),
                      const TextField(),
                      const TextTitle(titleText: "Price"),
                      const TextField(),
                      const TextTitle(titleText: "Description"),
                      const TextField(),
                      const Padding(
                        padding: EdgeInsets.only(top: 15),
                        child: Categories(),
                      ),
                      const AddImageButton(),
                      Center(
                        child: FilledButton(
                          onPressed: () {},
                          child: const Text(
                            "Add",
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            });
      },
      backgroundColor: Theme.of(context).colorScheme.primary,
      child: const Icon(
        Icons.add,
        color: Colors.white,
      ),
    );
  }
}

import 'package:faith_pharm/views/widgets/add_item_widgets/categories_drop_down.dart';
import 'package:faith_pharm/views/widgets/add_item_widgets/image_button.dart';
import 'package:faith_pharm/views/widgets/add_item_widgets/text_field.dart';
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
                padding:
                    const EdgeInsets.only(top: 15, left: 15, right: 15, bottom: 15),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextTitle(title_text: "Title"),
                      Text_field(),
                      TextTitle(title_text: "Size"),
                      Text_field(),
                      TextTitle(title_text: "Price"),
                      Text_field(),
                      TextTitle(title_text: "Description"),
                      Text_field(),
                      Padding(
                        padding: EdgeInsets.only(top: 15),
                        child: Categories(),
                      ),
                      AddImageButton(),
                      Center(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.indigo),
                          onPressed: () {},
                          child: const Text(
                            "Add",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            });
      },
      backgroundColor: Colors.indigo,

      child: const Icon(
        Icons.add,
        color: Colors.white,
      ),
    );
  }
}

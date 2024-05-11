import 'package:faith_pharm/models/product_model.dart';
import 'package:faith_pharm/services/products_serviecs.dart';
import 'package:faith_pharm/views/widgets/add_item_widgets/categories_drop_down.dart';
import 'package:faith_pharm/views/widgets/add_item_widgets/image_button.dart';
import 'package:faith_pharm/views/widgets/add_item_widgets/title_lable.dart';
import 'package:flutter/material.dart';

class AddProductForm extends StatefulWidget {
  const AddProductForm({
    super.key,
  });

  @override
  State<AddProductForm> createState() => _AddProductFormState();
}

class _AddProductFormState extends State<AddProductForm> {
  final _formKey = GlobalKey<FormState>();

  final _titleController = TextEditingController();
  final _sizeController = TextEditingController();
  final _priceController = TextEditingController();
  final _descriptionController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            const TextTitle(title_text: "Title"),
            TextFormField(
              controller: _titleController,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter title';
                } else {
                  return null;
                }
              },
              decoration: const InputDecoration(
                contentPadding: EdgeInsets.all(5),
                focusColor: Colors.white,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
              ),
            ),
            const TextTitle(title_text: "Size"),
            TextFormField(
              controller: _sizeController,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter size';
                } else {
                  return null;
                }
              },
              decoration: const InputDecoration(
                contentPadding: EdgeInsets.all(5),
                focusColor: Colors.white,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
              ),
            ),
            const TextTitle(title_text: "Price"),
            TextFormField(
              controller: _priceController,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter price';
                } else {
                  return null;
                }
              },
              decoration: const InputDecoration(
                contentPadding: EdgeInsets.all(5),
                focusColor: Colors.white,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
              ),
            ),
            const TextTitle(title_text: "Description"),
            TextFormField(
              controller: _descriptionController,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter description';
                } else {
                  return null;
                }
              },
              decoration: const InputDecoration(
                contentPadding: EdgeInsets.all(5),
                focusColor: Colors.white,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 15),
              child: Categories(),
            ),
            const AddImageButton(),
            Center(
              child: FilledButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                  }
                },
                child: const Text(
                  "Add",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Future<dynamic> _addProduct(BuildContext context) async {
  //   final add = ProductServices();
  //   ProductModel product = ProductModel(
  //     title: _titleController.text,
  //     desc: _descriptionController.text,
  //     price: _priceController.text,
  //     categoryId: 'categoryId',
  //     image: 'image',
  //   );
  //   try {
  //     await add.addProduct(product);
  //     if (context.mounted) Navigator.pop(context);
  //   } catch (e) {
  //     if (context.mounted) {
  //       showDialog(
  //         context: context,
  //         builder: (context) => AlertDialog(
  //           title: const Text('Error'),
  //           content: const Text('invalid login'),
  //           actions: [
  //             TextButton(
  //               onPressed: () {
  //                 Navigator.pop(context);
  //               },
  //               child: const Text('OK'),
  //             ),
  //           ],
  //         ),
  //       );
  //     }
  //   }
  // }
}

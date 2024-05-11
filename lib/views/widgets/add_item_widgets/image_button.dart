import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

File? _image;
final Picker = ImagePicker();

class AddImageButton extends StatefulWidget {
  const AddImageButton({
    super.key,
  });

  @override
  State<AddImageButton> createState() => _AddImageButtonState();
}

class _AddImageButtonState extends State<AddImageButton> {
  Future getImage() async {
    // ignore: non_constant_identifier_names
    final PickedFile =
        await Picker.pickImage(source: ImageSource.gallery, imageQuality: 80);
    setState(() {
      if (PickedFile != null) {
        _image = File(PickedFile.path);
        // widget.imgUrl = null;
      } else {
        print("No image selected");
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Column(
        children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.indigo),
            onPressed: () {
              getImage();
            },
            child: const Text(
              "Add image of the product",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
          PageContainer()
        ],
      ),
    );
  }
}

class PageContainer extends StatelessWidget {
  const PageContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
        child: _image != null
            ? Image.file(
                _image!.absolute,
                fit: BoxFit.cover,
              )
            : const Center(
                child: Icon(
                Icons.add_photo_alternate_outlined,
                size: 30,
              )));
  }
}

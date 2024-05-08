import 'package:flutter/material.dart';

class CustomElevatedButtonIcon extends StatelessWidget {
  const CustomElevatedButtonIcon({
    super.key,
    required this.icon,
    required this.text,
    this.onPress,
  });
  final Icon icon;
  final String text;
  final void Function()? onPress;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onPress,
      icon: icon,
      label: Text(text),
    );
  }
}

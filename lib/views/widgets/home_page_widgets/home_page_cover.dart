import 'dart:ui';

import 'package:flutter/material.dart';

class HomePageCover extends StatelessWidget {
  const HomePageCover({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
            'https://images.unsplash.com/photo-1586015555751-63bb77f4322a?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHw0fHxwaGFybWFjeXxlbnwwfHx8fDE3MTUwNzQ3MDN8MA&ixlib=rb-4.0.3&q=80&w=1080', // Replace with your background image URL
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 8.0, sigmaY: 8.0),
        child: const Center(
          child: Card(
            elevation: 0,
            color: Colors.transparent,
          ),
        ),
      ),
    );
  }
}

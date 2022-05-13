import 'package:flutter/material.dart';

class CustomImage extends StatelessWidget {
  final String image;
  final double height;
  const CustomImage({Key? key, required this.height, required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'images/$image.png',
      height: height,
      fit: BoxFit.contain,
    );
  }
}

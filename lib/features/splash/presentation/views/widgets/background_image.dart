import 'package:flutter/material.dart';
class BackgroundImage extends StatelessWidget {
  const BackgroundImage({
    super.key,
    required this.size, required this.imagePath,
  });

  final Size size;
  final String imagePath;
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      imagePath,
      width: size.width,
      height: size.height,
      fit: BoxFit.cover,
    );
  }
}

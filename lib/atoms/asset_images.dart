import 'package:flutter/material.dart';

class TestFase4AssetImage extends StatelessWidget {
  final String path;
  final double width;
  final double height;

  const TestFase4AssetImage({
    super.key,
    required this.path,
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      path,
      width: width,
      height: height,
    );
  }
}

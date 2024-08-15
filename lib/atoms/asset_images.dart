import 'package:flutter/material.dart';

class TestFase4AssetImage extends StatelessWidget {
  /// Url de la imagen en assets
  final String path;

  /// Ancho de la imagen
  final double width;

  /// Alto de la imagen
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

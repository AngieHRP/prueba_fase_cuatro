import 'package:flutter/material.dart';
import 'package:prueba_fase_4/atoms/asset_images.dart';

class TestFase4NetworkImage extends StatelessWidget {
  /// Url de la imagen en assets
  final String path;

  /// Ancho de la imagen
  final double width;

  /// Alto de la imagen
  final double height;

  const TestFase4NetworkImage({
    super.key,
    required this.path,
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5.0),
        child: FadeInImage(
          image: NetworkImage(path),
          placeholder: const AssetImage('assets/images/icon_image.png'),
          imageErrorBuilder: (context, error, stackTrace) {
            return TestFase4AssetImage(
              path: 'assets/images/icon_image.png',
              width: width,
              height: height,
            );
          },
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

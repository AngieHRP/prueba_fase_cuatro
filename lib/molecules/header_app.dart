import 'package:flutter/material.dart';
import 'package:prueba_fase_4/atoms/asset_images.dart';
import 'package:prueba_fase_4/tokens/colors.dart';
import 'package:prueba_fase_4/tokens/sizes.dart';
import 'package:prueba_fase_4/tokens/spacing.dart';

class TestFase4HeaderApp extends StatelessWidget {
  const TestFase4HeaderApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: TestFase4Sizes.sizeHeader,
        alignment: Alignment.topCenter,
        padding: EdgeInsets.only(
            top: TestFase4Spacing.spacingSmall,
            bottom: TestFase4Spacing.spacingSmall),
        decoration: const BoxDecoration(
          color: TestFase4Colors.backgroundHeader,
        ),
        child: TestFase4AssetImage(
          path: 'assets/images/logo.png',
          width: TestFase4Sizes.sizeImage,
          height: TestFase4Sizes.sizeHeader,
        ));
  }
}

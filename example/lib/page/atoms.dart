import 'package:flutter/material.dart';
import 'package:prueba_fase_4/atoms/asset_images.dart';
import 'package:prueba_fase_4/atoms/background_item.dart';
import 'package:prueba_fase_4/atoms/body_app.dart';
import 'package:prueba_fase_4/atoms/button.dart';
import 'package:prueba_fase_4/molecules/header_app.dart';
import 'package:prueba_fase_4/tokens/sizes.dart';
import 'package:prueba_fase_4/tokens/spacing.dart';
import 'package:prueba_fase_4/tokens/text_styles.dart';

class AtomsPage extends StatefulWidget {
  const AtomsPage({super.key});

  @override
  State<AtomsPage> createState() => _AtomsPageState();
}

class _AtomsPageState extends State<AtomsPage> {
  @override
  Widget build(BuildContext context) {
    return TestFase4BodyApp(
      childHeader: const TestFase4HeaderApp(),
      onBack: true,
      onBackPressed: () {
        Navigator.of(context).pop();
      },
      childBody: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Átomos',
              style: titleStyle,
            ),
            SizedBox(
              height: TestFase4Spacing.spacingMedium,
            ),
            Text(
              'Cargar una imágen',
              style: subTitleStyle,
            ),
            SizedBox(
              height: TestFase4Spacing.spacingXSmall,
            ),
            TestFase4AssetImage(
              path: 'assets/images/icon_image.png',
              width: TestFase4Sizes.sizeImage,
              height: TestFase4Sizes.sizeImage,
            ),
            SizedBox(
              height: TestFase4Spacing.spacingSmall,
            ),
            Text(
              'Fondo item',
              style: subTitleStyle,
            ),
            SizedBox(
              height: TestFase4Spacing.spacingXSmall,
            ),
            TestFase4BackgroundItem(
              child: TestFase4AssetImage(
                path: 'assets/images/icon_image.png',
                width: TestFase4Sizes.sizeImage,
                height: TestFase4Sizes.sizeImage,
              ),
            ),
            SizedBox(
              height: TestFase4Spacing.spacingSmall,
            ),
            Text(
              'Botón',
              style: subTitleStyle,
            ),
            SizedBox(
              height: TestFase4Spacing.spacingXSmall,
            ),
            TestFase4Button(
              text: 'Cargar una imágen',
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}

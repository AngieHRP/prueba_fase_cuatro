import 'package:flutter/material.dart';
import 'package:prueba_fase_4/atoms/body_app.dart';
import 'package:prueba_fase_4/molecules/header_app.dart';
import 'package:prueba_fase_4/molecules/item_single_text.dart';
import 'package:prueba_fase_4/molecules/network_images.dart';
import 'package:prueba_fase_4/tokens/sizes.dart';
import 'package:prueba_fase_4/tokens/spacing.dart';
import 'package:prueba_fase_4/tokens/text_styles.dart';

class MoleculesPage extends StatefulWidget {
  const MoleculesPage({super.key});

  @override
  State<MoleculesPage> createState() => _MoleculesState();
}

class _MoleculesState extends State<MoleculesPage> {
  @override
  Widget build(BuildContext context) {
    return TestFase4BodyApp(
      childHeader: const TestFase4HeaderApp(),
      onBack: true,
      marginBody: true,
      onBackPressed: () {
        Navigator.of(context).pop();
      },
      childBody: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Moléculas',
              style: titleStyle,
            ),
            SizedBox(
              height: TestFase4Spacing.spacingMedium,
            ),
            Text(
              'Cargar imágenes desde la red',
              style: subTitleStyle,
            ),
            SizedBox(
              height: TestFase4Spacing.spacingXSmall,
            ),
            TestFase4NetworkImage(
              path: 'https://i.imgur.com/tGbaZCY.jpg',
              width: TestFase4Sizes.sizeImage,
              height: TestFase4Sizes.sizeImage,
            ),
            SizedBox(
              height: TestFase4Spacing.spacingLarge,
            ),
            Text(
              'Item texto',
              style: subTitleStyle,
            ),
            SizedBox(
              height: TestFase4Spacing.spacingXSmall,
            ),
            const TestFase4ItemSingleText(
              title: 'Producto',
            ),
          ],
        ),
      ),
    );
  }
}

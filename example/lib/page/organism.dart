import 'package:flutter/material.dart';
import 'package:prueba_fase_4/atoms/body_app.dart';
import 'package:prueba_fase_4/molecules/header_app.dart';
import 'package:prueba_fase_4/organisms/item_product.dart';
import 'package:prueba_fase_4/organisms/list_single_text.dart';
import 'package:prueba_fase_4/tokens/spacing.dart';
import 'package:prueba_fase_4/tokens/text_styles.dart';

class OrganismsPage extends StatefulWidget {
  const OrganismsPage({super.key});

  @override
  State<OrganismsPage> createState() => _OrganismsState();
}

class _OrganismsState extends State<OrganismsPage> {
  List<String> list = ['Electrodoméstricos', 'Mercado', 'Aseo', 'Hogar'];

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
              'Organismos',
              style: titleStyle,
            ),
            SizedBox(
              height: TestFase4Spacing.spacingMedium,
            ),
            Text(
              'Item producto',
              style: subTitleStyle,
            ),
            SizedBox(
              height: TestFase4Spacing.spacingXSmall,
            ),
            const TestFase4ItemProduct(
              path: 'https://i.imgur.com/tGbaZCY.jpg',
              title: 'Cuadro imagen uno',
              price: 100.0,
            ),
            SizedBox(
              height: TestFase4Spacing.spacingMedium,
            ),
            Text(
              'Lista sencilla texto',
              style: subTitleStyle,
            ),
            TestFase4ListSingleText(
              list: list,
            ),
          ],
        ),
      ),
    );
  }
}

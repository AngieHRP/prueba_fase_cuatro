import 'package:example/page/templates/template_list_products.dart';
import 'package:example/page/templates/template_list_strings.dart';
import 'package:flutter/material.dart';
import 'package:prueba_fase_4/atoms/body_app.dart';
import 'package:prueba_fase_4/atoms/button.dart';
import 'package:prueba_fase_4/molecules/header_app.dart';

import 'package:prueba_fase_4/tokens/spacing.dart';
import 'package:prueba_fase_4/tokens/text_styles.dart';

class TemplatesPage extends StatefulWidget {
  const TemplatesPage({super.key});

  @override
  State<TemplatesPage> createState() => _TemplatesState();
}

class _TemplatesState extends State<TemplatesPage> {
  @override
  void initState() {
    super.initState();
  }

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
              'Plantillas',
              style: titleStyle,
            ),
            SizedBox(
              height: TestFase4Spacing.spacingMedium,
            ),
            TestFase4Button(
              text: 'Lista de productos',
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const TemplateListProductsPage()));
              },
            ),
            SizedBox(
              height: TestFase4Spacing.spacingMedium,
            ),
            TestFase4Button(
              text: 'Plantilla lista de texto',
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const TemplateListStringsPage()));
              },
            ),
          ],
        ),
      ),
    );
  }
}

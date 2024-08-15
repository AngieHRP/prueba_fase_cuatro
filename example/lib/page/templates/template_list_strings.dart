import 'package:flutter/material.dart';
import 'package:prueba_fase_4/atoms/body_app.dart';
import 'package:prueba_fase_4/molecules/header_app.dart';
import 'package:prueba_fase_4/templates/template_list_text.dart';
import 'package:prueba_fase_4/tokens/spacing.dart';
import 'package:prueba_fase_4/tokens/text_styles.dart';

class TemplateListStringsPage extends StatefulWidget {
  const TemplateListStringsPage({super.key});

  @override
  State<TemplateListStringsPage> createState() => _TemplateListStringsState();
}

class _TemplateListStringsState extends State<TemplateListStringsPage> {
  List<String> list = ['Electrodoméstricos', 'Mercado', 'Aseo', 'Hogar'];

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
              'Plantillas',
              style: titleStyle,
            ),
            SizedBox(
              height: TestFase4Spacing.spacingMedium,
            ),
            TestFase4TemplateListText(
              list: list,
              title: 'Categorías',
            )
          ],
        ),
      ),
    );
  }
}

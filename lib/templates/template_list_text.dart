import 'package:flutter/material.dart';
import 'package:prueba_fase_4/organisms/list_single_text.dart';
import 'package:prueba_fase_4/tokens/spacing.dart';
import 'package:prueba_fase_4/tokens/text_styles.dart';

class TestFase4TemplateListText extends StatelessWidget {
  /// Lista de String
  final List<String> list;

  /// Título de la página
  final String title;

  const TestFase4TemplateListText({
    super.key,
    required this.list,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: TestFase4Spacing.spacingLarge,
          ),
          Text(
            title,
            style: titleStyle,
          ),
          TestFase4ListSingleText(
            list: list,
          ),
        ],
      ),
    );
  }
}

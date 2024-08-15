import 'package:flutter/material.dart';
import 'package:prueba_fase_4/molecules/item_single_text.dart';
import 'package:prueba_fase_4/tokens/spacing.dart';

class TestFase4ListSingleText extends StatelessWidget {
  /// Lista de String
  final List<String> list;

  const TestFase4ListSingleText({
    super.key,
    required this.list,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: list.length,
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        padding: EdgeInsets.only(
            top: TestFase4Spacing.spacingLarge,
            bottom: TestFase4Spacing.spacingLarge),
        itemBuilder: (_, index) {
          return TestFase4ItemSingleText(title: list[index]);
        });
  }
}
